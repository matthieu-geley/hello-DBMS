1. Créez une requête permettant d’afficher la population totale du monde.

SELECT SUM(population) FROM world;

2. Créez une requête permettant d’afficher la population totale de chacun des continents.

SELECT continent, SUM(population) FROM world GROUP BY continent;

3. Créez une requête permettant d’afficher le PIB total du continent de chacun des continents.

SELECT continent, SUM(gdp) FROM world GROUP BY continent;

4. Créez une requête permettant d’afficher le PIB total du continent africain.

SELECT SUM(gdp) FROM world WHERE continent = 'Africa';

5. Créez une requête permettant d’afficher le nombre de pays ayant une superficie supérieure ou égale à 1 000 000m2.

SELECT COUNT(name) FROM world WHERE area >= 1000000;

6. Créez une requête permettant d’afficher la population totale des pays suivants : Estonia, Latvia, Lithuania.

SELECT SUM(population) FROM world WHERE name IN ('Estonia', 'Latvia', 'Lithuania');

7. Créez une requête permettant d’afficher le nombre de pays de chaque continent.

SELECT continent, COUNT(name) FROM world GROUP BY continent;

8. Créez une requête permettant d’afficher les continents ayant une population totale d’au moins 100 millions d’individus.

SELECT continent FROM world GROUP BY continent HAVING SUM(population) >= 100000000;