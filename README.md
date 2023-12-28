# Hello DBMS

## Introduction

Les données sont des éléments servant de base à un raisonnement ou de point de départ à une recherche.
A partir de données dites transformées, il est possible d’extraire de l’information primordiale pour les entreprises.
Une donnée peut être perdue ou erronée, c’est ici qu’apparaît l’intérêt d’un système de gestion de bases de données approprié.
Par ailleurs, les données doivent être stockées sur une base de données pour améliorer la performance de l’entreprise.
Il est important que celles-ci soient non corrompues, propres, centralisées et accessibles.

Ce projet nous permettra d'en apprendre plus sur les base de données, pourquoi ont elle été créées, comment les utiliser, les différents types de base de données, les différents langages de requêtes et de nous familiariser avec les bases de données relationnelles ainsi que leurs requêtes SQL.

## Hello veille

### Une donnée

- Une donnée est une information qui est la représentation d'une valeur mesurable ou non, d'une caractéristique ou d'une connaissance.

- Elle peut être présenté sous forme numérique, textuelle, visuelle, sonore, etc.

### Critères de qualité d'une donnée

- Les critères de mesure de la qualité des données sont : l'exactitude, l'exhaustivité, la cohérence, la validité, l'actualité, l'intégrité, la clarté ou encore la sécurité de la donnée.

### Les types de dépôts de données

- Un Data Lake est un dépôt centralisé conçu pour stocked, traiter et sécuriser de grands volumes de données structurées, semi-structurées et non structurées. Il peut traiter tout type de données et les stocker dans leur format natif, quelle que soit leur taille.

- Un Data Warehouse est une technologie qui regroup des données structurées provenant d'une ou plusieurs sources afin qu'elles puissent être comparées et analysées pour en tirer des informations utiles.

- Un Lake House est une nouvelle architecture ouverte qui combine la flexibilité et l'évolutivité d'un lac de données avec les structures de données et les fonctionnalités de gestion d'un entrepôt de données.

### Les SGBD

- Un système de gestion de base de données (SGBD) est un logiciel système permettant aux utilisateurs et programmeurs de créer et de gérer des bases de données.

- Les SGBD les plus connus sont : Oracle, MySQL, PostgreSQL, MongoDB, MariaDB, SQLite.

### Les SGBDR et les non relationnels

- Un système de gestion de base de données relationnelle (SGBDR) est un SGBD qui permet de stocker et de récupérer des données dans un tableau à deux dimensions appelé table selon le modèle introduit en 1960 par Edgar Frank Codd. Selon ce modèle relationnel, une base de données consiste en une ou plusieurs relations.

- Une base de données non relationnelle est une base de données qui ne respecte pas le modèle relationnel, tabulaire sous forme de ligne et de colonne. Les bases de données non relationnelles sont également appelées bases de données NoSQL, Not Only SQL.

### Les clés primaires et étrangères

- Une clé primaire est un champ ou un ensemble de champs de table qui contient des valeurs uniques la valeur de cette clé ne peut être NULL.

- Une clé étrangère est une contrainte qui s'assure du respect de l'intégrité référentielle de la base de données. Elle permet de lier deux tables entre elles. La donnée qui compose la clé étrangère de la table A doit faire référence à une donnée existante dans la clé primaire de la table B.

### Les propriété ACID

- ACID est un acronyme anglais pour Atomicité, Cohérence, Isolation et Durabilité. Il s'agit d'un ensemble de propriétés garantissant qu'une transaction informatique est exécutée de manière fiable. Dans le domaine des bases de données, une opération sur les données est appelée une transaction ou une transaction informatique.

### MERISE et UML

- MERISE est une méthode d'analyse, de conception des systèmes d'information basée sur le principe de la séparation es données et des traitements.

- UML est un langage de modélisation pensé pour être un langage de modélisation commun et riche sémantiquement et syntaxiquement.

### Le langage SQL

- Le Structured Query Language est un langage de programmation normalisé utilisé pour gérer et manipuler les données dans les bases de données relationnelles.

# BIG JOB

## Lancement de l'application Flask pour le Big Job

- Pour exécuter l'application Flask qui permet l'affichage des données de base SQL sur une page web, il vous faut:
    - Ouvrir votre IDE (logiciel de développement: VS Code, PyCharm, ...),
    - Ouvrir le projet dans votre IDE,
    - À l'aide de votre terminal intégré, se déplacer dans le dossier Big Job à l'aide de cette commande: 
    ```shell
    cd "Big Job"
    ```
    - Créer un environnement virtuel à l'aide de cette commande:
    ```shell
    python3 -m venv env
    ```
    - Activer votre environnement virtuel en utilisant cette commande: 
    ```shell
    source env/bin/activate
    ```
    - Installer les dépendances nécessaires:
    ```shell
    pip install -r requirements.txt
    ```
    - Ouvrir et Modifier le document "credential.json" avec vos informations de connexion à votre base de données,

    - Exécuter l'application Flask:
    ```shell
    flask run
    ```
    - Ouvrer votre navigateur internet et rejoignez la page:

    - - http://127.0.0.1:5000
    
    - ou encore:
    
    - - http://localhost:5000