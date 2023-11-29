1. Modifiez la requête ci-dessus afin d’afficher la population de “Germany”.

SELECT population FROM country WHERE name = 'Germany';

2. Modifiez la requête ci-dessus afin d’afficher la population de “Sweden”, “Norway” et “Denmark”.

SELECT name, population FROM country WHERE name in ('Sweden', 'Norway', 'Denmark');

3. Créez une requête permettant d’afficher les pays dont la superficie est supérieure à 300 000 mais inférieure à 200 000.

SELECT name FROM country WHERE area < 300000 AND area > 200000;
