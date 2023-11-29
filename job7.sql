1. Observez le schéma relationnel de la base de données UEFA EURO 2012 ci-dessus. Analysez les cardinalités.



2. La requête ci-dessous permet d’afficher le but marqué par un joueur dont le nom de famille est "Bender".
SELECT * FROM goal WHERE player LIKE '%Bender';

L'astérisque (*) indique qu'il faut énumérer toutes les colonnes du tableau - une façon d’appeler toutes les colonnes de la table goal (matchid, teamid, player, gtime).
Modifiez cette requête afin d’afficher le numéro de match et le nom du joueur pour tous les buts marqués par l'Allemagne.
Afin d’identifier les joueurs allemands, vérifiez que : teamid = 'GER'.

SELECT matchid, player FROM goal WHERE teamid = 'GER';

3. Créez une requête permettant d’afficher les colonnes id, stadium, team1, team2 pour le match dont l’id est 1012.


4. La requête suivante permet de joindre la table game et la table goal sur la colonne id-matchid. Modifiez cette requête afin d’afficher player, teamid, stadium et mdate de chaque but allemand.


5. Créez une requête permettant d’afficher team1, team2 et player pour chaque but marqué par un joueur appelé Mario.


6. Créez une requête permettant de joindre la table goal et la table eteam sur les clés id - teamid.


7. Créez une requête permettant d’afficher player, teamid, coach, gtime pour tous les buts marqués dans les 10 premières minutes des matchs.


8. La requête suivante permet de joindre la table game et la table eteam sur les clés team1 - eteam.id.
Créez une requête permettant d’afficher les dates des matches ainsi que le nom de l'équipe dont "Fernando Santos" était le coach de l’équipe team1.

9. Créez une requête permettant d’afficher la liste des joueurs pour chaque but marqué lors d'un match dont le stade était le “National Stadium, Warsaw”.


10.Créez une requête permettant d’afficher le nombre total de buts marqués pour chaque équipe de la table goal.


11.Créez une requête permettant d’afficher les stades et le nombre de buts marqués dans chacun des stades de la jointure de game-goal.


12.Pour chaque match où l’équipe de France a marqué, créez une requête permettant d’afficher l'id du match, la date du match et le nombre de buts marqués par "FRA".
