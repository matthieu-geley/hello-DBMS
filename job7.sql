"1. Observez le schéma relationnel de la base de données UEFA EURO 2012 ci-dessus. Analysez les cardinalités."

Cardinalités eteam (1,1) - game (0,n) :

Une eteam joue dans 0 ou N game.
Une game possède 2* (1 et 1 seule) eteam.

Cardinalités eteam (1,1) - goal (0,n) :

Une eteam est présente dans 0 ou N goal.
Un goal est marqué par 1 et 1 seule eteam.

Cardinalités game (1,1) - goal (0,n) :

Une game est présente dans 0 ou N goal.
Un goal est marqué dans 1 et 1 seule game.

"2. La requête ci-dessous permet d’afficher le but marqué par un joueur dont le nom de famille est "Bender".
SELECT * FROM goal WHERE player LIKE '%Bender';"

"L'astérisque (*) indique qu'il faut énumérer toutes les colonnes du tableau - une façon d’appeler toutes les colonnes de la table goal (matchid, teamid, player, gtime).
Modifiez cette requête afin d’afficher le numéro de match et le nom du joueur pour tous les buts marqués par l'Allemagne.
Afin d’identifier les joueurs allemands, vérifiez que : teamid = 'GER'."

SELECT matchid, player FROM goal WHERE teamid = 'GER';

"3. Créez une requête permettant d’afficher les colonnes id, stadium, team1, team2 pour le match dont l’id est 1012."

SELECT id, stadium, team1, team2 FROM game WHERE id = 1012;

"4. La requête suivante permet de joindre la table game et la table goal sur la colonne id-matchid. Modifiez cette requête afin d’afficher player, teamid, stadium et mdate de chaque but allemand."

SELECT player, teamid, stadium, mdate FROM game JOIN goal ON (id = matchid) WHERE teamid = 'GER';

"5. Créez une requête permettant d’afficher team1, team2 et player pour chaque but marqué par un joueur appelé Mario."

SELECT team1, team2, player FROM game JOIN goal ON (id = matchid) WHERE player LIKE '%Mario%';

"6. Créez une requête permettant de joindre la table goal et la table eteam sur les clés id - teamid."

SELECT * FROM goal JOIN eteam ON (id = teamid);

"7. Créez une requête permettant d’afficher player, teamid, coach, gtime pour tous les buts marqués dans les 10 premières minutes des matchs."

SELECT player, teamid, coach, gtime FROM goal JOIN eteam ON (id = teamid) WHERE gtime <= 10;

"8. La requête suivante permet de joindre la table game et la table eteam sur les clés team1 - eteam.id.
Créez une requête permettant d’afficher les dates des matches ainsi que le nom de l'équipe dont "Fernando Santos" était le coach de l’équipe team1."

SELECT mdate, teamname FROM game JOIN eteam ON (team1 = eteam.id) WHERE coach = 'Fernando Santos';

"9. Créez une requête permettant d’afficher la liste des joueurs pour chaque but marqué lors d'un match dont le stade était le “National Stadium, Warsaw”."

SELECT player FROM goal JOIN game ON (matchid = id) WHERE stadium = 'National Stadium, Warsaw';

"10.Créez une requête permettant d’afficher le nombre total de buts marqués pour chaque équipe de la table goal."

SELECT teamid, COUNT(*) FROM goal GROUP BY teamid;

"11.Créez une requête permettant d’afficher les stades et le nombre de buts marqués dans chacun des stades de la jointure de game-goal."

SELECT stadium, COUNT(*) FROM game JOIN goal ON (id = matchid) GROUP BY stadium;

"12.Pour chaque match où l’équipe de France a marqué, créez une requête permettant d’afficher l'id du match, la date du match et le nombre de buts marqués par "FRA"."

SELECT matchid, mdate, COUNT(*) FROM game JOIN goal ON (id = matchid) WHERE teamid = 'FRA' GROUP BY matchid;