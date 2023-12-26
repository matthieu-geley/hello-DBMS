"1. Vous récupérez les données d’intérêt ici. Vous avez à votre disposition un
dataset composé de deux tables, Country et World. Elles recensent le
pourcentage d'utilisation de différentes sources d’énergie (charbon, gaz, pétrole,
nucléaire, ...) en 2015 pour la production d’électricité par pays dans la table
Country, puis par région du monde dans la table World."

"2. Créez la base de données  -, puis les tables Country et World."

CREATE table if NOT EXISTS Country (
	Country VARCHAR(255) NOT NULL primary key,
	Coal FLOAT NOT NULL,
	Gas FLOAT NOT NULL,
	Oil FLOAT NOT NULL,
	Hydro FLOAT NOT NULL,
	Renewable FLOAT NOT NULL,
	Nuclear FLOAT NOT NULL);

CREATE table if NOT EXISTS World (
	Country VARCHAR(255) NOT NULL primary key,
	Coal FLOAT NOT NULL,
	Gas FLOAT NOT NULL,
	Oil FLOAT NOT NULL,
	Hydro FLOAT NOT NULL,
	Renewable FLOAT NOT NULL,
	Nuclear FLOAT NOT NULL);


"3. Utilisez des requêtes SQL afin d’analyser les données recueillies et tirez un
maximum d’informations sur les émissions en carbone. Qu’est ce que vous
observez ? Notez ces observations pour la suite."

"sélectionner les 10 pays qui ont le plus d'émissions de charbon"
SELECT Country, Coal FROM Country ORDER BY Coal DESC LIMIT 10;

"sélectionner les 10 pays qui ont le moins d'émissions de charbon"
SELECT Country, Coal FROM Country ORDER BY Coal ASC LIMIT 10;

"sélectionner les 10 pays qui ont le plus d'émissions de gaz"
SELECT Country, Gas FROM Country ORDER BY Gas DESC LIMIT 10;

"sélectionner les 10 pays qui ont le moins d'émissions de gaz"
SELECT Country, Gas FROM Country ORDER BY Gas ASC LIMIT 10;

"sélectionner les 10 pays qui ont le plus d'émissions de pétrole"
SELECT Country, Oil FROM Country ORDER BY Oil DESC LIMIT 10;

"sélectionner les 10 pays qui ont le moins d'émissions de pétrole"
SELECT Country, Oil FROM Country ORDER BY Oil ASC LIMIT 10;

"sélectionner les 10 pays qui ont le plus d'émissions d'hydroélectricité"
SELECT Country, Hydro FROM Country ORDER BY Hydro DESC LIMIT 10;

"sélectionner les 10 pays qui ont le moins d'émissions d'hydroélectricité"
SELECT Country, Hydro FROM Country ORDER BY Hydro ASC LIMIT 10;

"sélectionner les 10 pays qui ont le plus d'émissions d'énergie renouvelable"
SELECT Country, Renewable FROM Country ORDER BY Renewable DESC LIMIT 10;

"sélectionner les 10 pays qui ont le moins d'émissions d'énergie renouvelable"
SELECT Country, Renewable FROM Country ORDER BY Renewable ASC LIMIT 10;

"sélectionner les 10 pays qui ont le plus d'émissions de nucléaire"
SELECT Country, Nuclear FROM Country ORDER BY Nuclear DESC LIMIT 10;

"sélectionner les 10 pays qui ont le moins d'émissions de nucléaire"
SELECT Country, Nuclear FROM Country ORDER BY Nuclear ASC LIMIT 10;

"sélectionner la région du monde qui a le plus d'émissions de charbon"
SELECT Country, Coal FROM World ORDER BY Coal DESC LIMIT 1;

"sélectionner la région du monde qui a le moins d'émissions de charbon"
SELECT Country, Coal FROM World ORDER BY Coal ASC LIMIT 1;

"sélectionner la région du monde qui a le plus d'émissions de gaz"
SELECT Country, Gas FROM World ORDER BY Gas DESC LIMIT 1;

"sélectionner la région du monde qui a le moins d'émissions de gaz"
SELECT Country, Gas FROM World ORDER BY Gas ASC LIMIT 1;

"sélectionner la région du monde qui a le plus d'émissions de pétrole"
SELECT Country, Oil FROM World ORDER BY Oil DESC LIMIT 1;

"sélectionner la région du monde qui a le moins d'émissions de pétrole"
SELECT Country, Oil FROM World ORDER BY Oil ASC LIMIT 1;

"sélectionner la région du monde qui a le plus d'émissions d'hydroélectricité"
SELECT Country, Hydro FROM World ORDER BY Hydro DESC LIMIT 1;

"sélectionner la région du monde qui a le moins d'émissions d'hydroélectricité"
SELECT Country, Hydro FROM World ORDER BY Hydro ASC LIMIT 1;

"sélectionner la région du monde qui a le plus d'émissions d'énergie renouvelable"
SELECT Country, Renewable FROM World ORDER BY Renewable DESC LIMIT 1;

"sélectionner la région du monde qui a le moins d'émissions d'énergie renouvelable"
SELECT Country, Renewable FROM World ORDER BY Renewable ASC LIMIT 1;

"sélectionner la région du monde qui a le plus d'émissions de nucléaire"
SELECT Country, Nuclear FROM World ORDER BY Nuclear DESC LIMIT 1;

"sélectionner la région du monde qui a le moins d'émissions de nucléaire"
SELECT Country, Nuclear FROM World ORDER BY Nuclear ASC LIMIT 1;


"On remarque qu'un pays avec de haut taux d'émissions de charbon aura de faible taux dans les autres catégories et inversement.
Cela est dû au fait que l'on utilise un pourcentage pour chaque catégorie, donc si un pays a un taux de 100% dans une catégorie, il aura 0% dans les autres."

"4. Créez une application Flask où vous présenterez le contexte de ce mini projet et
les observations faites précédemment. Pensez à afficher un aperçu de votre jeu
de données CarbonFootprint."

"5. Le tableau suivant montre les émissions de CO2 de différentes sources de
production d'électricité d’après une étude réalisée par le Groupe d'experts
intergouvernemental sur l'évolution du climat datée de 2014. Par exemple, pour
l'électricité produite à partir du charbon, les émissions de CO2 par kilowattheure
varient de 740 grammes (au minimum) à 910 grammes (au maximum), avec une
médiane de 820 grammes. Calculez le pourcentage de contribution des
différentes sources du tableau aux émissions totales de CO2 lors de la
production d’électricité pour tous les pays de Country.
Indice : Contribution du charbon aux émissions totales de CO2 d’un pays =
Pourcentage d’utilisation du charbon du pays x Emission de gCO2 par kWh du
charbon."

"6. Modifiez votre application Flask afin de pouvoir filtrer vos données selon un pays
(ou une région du monde) sélectionnable depuis une selection box."

"7. Créez un tableau montrant, pour chaque pays sélectionné depuis la selection box
créée précédemment, le pourcentage d’utilisation de différentes ressources,
l’émission médiane en gCO2kWh de ces ressources et la contribution spécifique
de ses ressources aux émissions totales de CO2 lors de la production
d’électricité.
Par exemple, si l’on sélectionne l’Albanie depuis la selection box, le tableau doit
afficher les éléments suivants :"

"8. Calculez et affichez l'émission totale des différentes sources d’un pays
sélectionné : émissions totales = émission de charbon + émission de gaze + … +
émission de nucléaire. Par exemple : 0 + 0 + 0 + 24 +... + 0 = 24 gCO2/kWh."

22/12

"9. Calculez et affichez l’émission totale annuelle pour un pays (toujours depuis une
selection box). On définit la formule permettant de calculer cette valeur comme
suit :
Émissions annuelles totales de CO2 = Émissions totales en kgCO2/kWh x
nombre d'heures dans une année x consommation électrique, où la
consommation électrique en kw doit être spécifiée par l’utilisateur.
Afin d’y voir pour clair, faisons ce calcul pour l’Albanie, on a :
    1. Émissions totales de l’Albanie en kgCO2/kWh : 0.024 (kgCO2/kwh)
    2. Nombre d’heures dans une année : 24 x 365
    3. Puissance électrique consommée de manière continue par l’Albanie
(donnée choisie par l’utilisateur) : 1 (kw)
On calcule donc à l’aide de la formule précédente, les émissions en CO2 de
l’Albanie durant une année pour la production d’électricité consommée de 1 (kw)
par heure, par jour : 0.024 x 24 x 365 x 1 = 210,24 (kg of CO2)."

"10.Pour finir, en sachant qu’un arbre absorbe environ 25 kg de CO2 par an, affichez
le nombre nécessaire d’arbres à planter afin d’absorber le CO2 engendré par un
pays (sélectionné depuis la selection box, et oui) durant la production
d’électricité."