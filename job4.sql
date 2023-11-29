1. Créez une requête permettant d’afficher les prix nobels de 1986.

SELECT * FROM nobel WHERE yr = 1986;

2. Créez une requête permettant d’afficher les prix nobels de littérature de 1967.

SELECT * FROM nobel WHERE yr = 1967 AND subject = 'Literature';

3. Créez une requête permettant d’afficher l’année et le sujet du prix nobel d’Albert Einstein.

SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein';

4. Créez une requête permettant d’afficher les détails (année, sujet, lauréat) des lauréats du prix de Littérature de 1980 à 1989 inclus.

SELECT * FROM nobel WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989;

5. Créez une requête permettant d’afficher les détails des lauréats du prix de Mathématiques. Combien y en a-t-il ?

SELECT * FROM nobel WHERE subject = 'Mathematics';

0, le prix nobel de mathématiques n'existe pas.