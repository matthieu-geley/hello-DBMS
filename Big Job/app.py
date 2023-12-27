from flask import Flask, render_template, request, redirect, url_for, session, flash
import json
import mysql.connector

app = Flask(__name__)

def connect_db():
    with open('credential.json') as f:
        data = json.load(f)
        user = data[0]['user']
        password = data[0]['password']
        host = data[0]['host']
        db = data[0]['database']
    connect =  mysql.connector.connect(user=user, password=password, host=host, database=db)
    return connect

def get_header():
    db = connect_db()
    cursor = db.cursor()
    cursor.execute("SELECT * FROM country")
    column = cursor.column_names
    return column

def get_world_carbon_footprint():
    db = connect_db()
    cursor = db.cursor()
    cursor.execute("SELECT * FROM world")
    result = cursor.fetchall()
    return result

def get_three_world_carbon_footprint():
    db = connect_db()
    cursor = db.cursor()
    cursor.execute("SELECT * FROM world ORDER BY Country ASC LIMIT 3")
    result = cursor.fetchall()
    return result

def get_three_country_carbon_footprint():
    db = connect_db()
    cursor = db.cursor()
    cursor.execute("SELECT * FROM country ORDER BY Country ASC LIMIT 3")
    result = cursor.fetchall()
    return result

def get_coutry_carbon_footprint(filter: str = None):
    db = connect_db()
    cursor = db.cursor()
    if filter == None:
        cursor.execute("SELECT * FROM country UNION SELECT * FROM world")
    else:
        cursor.execute(f"SELECT * FROM country WHERE Country = '{filter}'")
    result = cursor.fetchall()
    return result

def selected(country):
    return country

def get_country_data_emit(filter:str = None, Yearly:bool = False):
    mean_coal = 820
    mean_gaz = 490
    mean_oil = 740
    mean_hydro = 24
    mean_renewable = 41
    mean_nuclear = 12

    db = connect_db()
    cursor = db.cursor()
    get_world_name = cursor.execute("SELECT Country FROM world")
    get_world_name = cursor.fetchall()
    world_name = []
    for i in get_world_name:
        world_name.append(i[0])
    if filter == None:
        cursor.execute("SELECT * FROM country UNION SELECT * FROM world")
    elif filter in world_name:
        cursor.execute(f"SELECT * FROM world WHERE Country = '{filter}'")
    else :
        cursor.execute(f"SELECT * FROM country WHERE Country = '{filter}'")
    result = cursor.fetchall()
    Data = []

    for i in result:
        coal = i[1]
        gaz = i[2]
        oil = i[3]
        hydro = i[4]
        renewable = i[5]
        nuclear = i[6]

        Coal = round((coal*mean_coal)/100, 2)
        Gaz = round((gaz*mean_gaz)/100, 2)
        Oil = round((oil*mean_oil)/100, 2)
        Hydro = round((hydro*mean_hydro)/100, 2)
        Renewable = round((renewable*mean_renewable)/100, 2)
        Nuclear = round((nuclear*mean_nuclear)/100, 2)
        Total_use = round(coal+gaz+oil+hydro+renewable+nuclear, 2)
        Total_mean = round(mean_coal+mean_gaz+mean_oil+mean_hydro+mean_renewable+mean_nuclear, 2)
        Total_Wh = round(Coal+Gaz+Oil+Hydro+Renewable+Nuclear, 2)

        Data.extend([["Charbon", coal, mean_coal, Coal,],
                    ["Gaz Naturel", gaz, mean_gaz, Gaz,],
                    ["Pétrole", oil, mean_oil, Oil,],
                    ["Hydroélectrique", hydro, mean_hydro, Hydro,],
                    ["Renouvelable", renewable, mean_renewable, Renewable,],
                    ["Nucléaire", nuclear, mean_nuclear, Nuclear,],
                    ["Total", Total_use, Total_mean, Total_Wh,]])
        
    if Yearly == True:
        return Total_Wh
    else:
        return Data

def Annual_emmit(filter, elec):

    Total_Wh = get_country_data_emit(filter, Yearly=True)

    Yearly = []
    Convert_kWh = float(Total_Wh) / 1000
    Annual_hour = 24 * 365
    Annual_emmit = float(Convert_kWh) * float(Annual_hour) * float(elec)
    Tree = round(Annual_emmit / 25, 2)
    Yearly.extend([["Pays", filter,],
                   ["Puissance électrique consommée", f"{elec} kW",],
                    ["Emmission annuelle", f"{Annual_emmit} KgCO2/kWh",],
                    ["Nombres d'arbres à planter", Tree,],])
    
    return Yearly


@app.route('/', methods=['GET', 'POST'])
def index():
    return render_template('index.html', 
                    world_data=get_world_carbon_footprint(), 
                    three_world_data=get_three_world_carbon_footprint(), 
                    country_data=get_coutry_carbon_footprint(), 
                    headers=get_header(), 
                    three_country_data=get_three_country_carbon_footprint())

@app.route('/country', methods=['GET', 'POST'])
def country():
    filter = request.form.get('country')
    elec = request.form.get('elec')
    return render_template('index.html',
                        world_data=get_world_carbon_footprint(), 
                        three_world_data=get_three_world_carbon_footprint(), 
                        country_data=get_coutry_carbon_footprint(), 
                        headers=get_header(), 
                        three_country_data=get_three_country_carbon_footprint(), 
                        country_data_emit=get_country_data_emit(filter), country_name = filter, elec = elec,
                        Annual_emmit=Annual_emmit(filter, elec))