# Films - Correction

## Selection

1. SELECT titre FROM film;

2. SELECT nom,prenom FROM internaute WHERE region='Auvergne';

3. SELECT titre,annee FROM film WHERE genre LIKE 'Drame' ORDER BY annee desc;

4. SELECT nom,anneenaiss FROM artiste WHERE anneenaiss<1950;

5. SELECT titre, annee FROM film WHERE annee<=1980 AND annee>=1960;

   Autre possibilités en utilisant BETWEEN
  
   SELECT titre, annee FROM film WHERE annee BETWEEN '1960' AND '1980';
  
6. SELECT titre,genre,resume FROM film WHERE genre IN ('Drame', 'Western') AND resume LIKE '%vie%';

7. SELECT nom FROM artiste WHERE nom LIKE 'H%';

8. SELECT nom,prenom FROM artiste WHERE anneenaiss IS NULL;

9. SELECT prenom, nom, (2020-anneenaiss) AS age FROM artiste;

## Jointure

1. SELECT nom, prenom FROM artiste INNER JOIN role ON artiste.idartiste = role.idacteur WHERE nomrole LIKE 'Morpheus' 

2. SELECT nom, prenom FROM artiste INNER JOIN film ON artiste.idartiste = film.idmes WHERE titre LIKE 'Alien'

3. SELECT nom,prenom,titre FROM internaute INNER JOIN notation ON internaute.email=notation.email INNER JOIN film on notation.idfilm=film.idfilm WHERE notation.note=4

4. SELECT nom,prenom,nomrole FROM artiste INNER JOIN role ON artiste.idartiste = role.idacteur INNER JOIN film ON role.idfilm = film.idfilm WHERE titre LIKE 'Vertigo'

5. SELECT titre,nomrole FROM artiste INNER JOIN role ON artiste.idartiste = role.idacteur INNER JOIN film ON role.idfilm = film.idfilm  WHERE nom LIKE 'Willis' AND prenom LIKE 'Bruce'

6. SELECT titre FROM film INNER JOIN artiste AS realisateur ON film.idmes=realisateur.idartiste INNER JOIN role ON film.idfilm = role.idfilm INNER JOIN artiste ON role.idacteur = artiste.idartiste WHERE realisateur.nom LIKE 'Burton' and artiste.nom LIKE 'Depp' 

7. SELECT titre,nomrole,realisateur.nom,realisateur.prenom FROM film INNER JOIN artiste AS realisateur ON film.idmes=realisateur.idartiste INNER JOIN role ON film.idfilm = role.idfilm INNER JOIN artiste ON role.idacteur = artiste.idartiste WHERE realisateur.idartiste=role.idacteur

8. SELECT titre,realisateur.nom,artiste.nom FROM film INNER JOIN artiste AS realisateur ON film.idmes=realisateur.idartiste INNER JOIN role ON film.idfilm = role.idfilm INNER JOIN artiste ON role.idacteur = artiste.idartiste WHERE realisateur.idartiste!=role.idacteur AND realisateur.prenom = artiste.prenom

## Insertion, Modification, Suppression

1. INSERT INTO film (idfilm, titre, genre, annee) VALUES (300, 'Film 1', 'Policier', 2020), (301, 'Film 2', 'Policier', 2020);
2. UPDATE film SET annee = 1983, genre = 'Drame' WHERE idfilm = 300 OR idfilm = 301;
3. DELETE FROM film where idfilm = 300 OR idfilm = 301;

## Requêtes imbriquées

1. SELECT titre, annee, film.genre FROM film 
INNER JOIN (SELECT genre FROM film WHERE titre LIKE 'Matrix') AS genrematrix ON film.genre = genrematrix.genre;
2. SELECT nom, prenom FROM artiste WHERE idartiste IN (SELECT idmes FROM film);
3. SELECT nom, prenom FROM notation INNER JOIN internaute ON internaute.email = notation.email WHERE idfilm IN (SELECT idfilm FROM film WHERE titre LIKE 'Alien');

## Négation

1. SELECT film.* FROM film LEFT JOIN role ON film.idfilm = role.idfilm WHERE nomrole IS null;
2. SELECT nom, prenom FROM artiste WHERE idartiste NOT IN (SELECT idmes FROM film);
3. SELECT nom, prenom FROM internaute INNER JOIN (SELECT email FROM notation WHERE idfilm NOT IN (SELECT idfilm FROM film WHERE annee = 1999) GROUP BY email) AS list ON list.email= internaute.email;

## Fonction de groupe

1. SELECT count(*) AS nb_notation, min(note), max(note), avg(note) FROM notation WHERE email LIKE 'rigaux@cnam.fr';
2. SELECT count(*) AS nb FROM role WHERE nomrole LIKE 'McClane';
3. SELECT min(annee), max(annee) FROM film;
4. SELECT annee, count(*) FROM film GROUP BY annee;
5. SELECT idartiste, nom, prenom, count(*) FROM artiste INNER JOIN film ON film.idmes = artiste.idartiste GROUP BY idartiste;
