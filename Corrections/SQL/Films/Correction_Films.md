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

7.  SELECT titre,nomrole,realisateur.nom,realisateur.prenom FROM film INNER JOIN artiste AS realisateur ON film.idmes=realisateur.idartiste INNER JOIN role ON film.idfilm = role.idfilm INNER JOIN artiste ON role.idacteur = artiste.idartiste WHERE realisateur.idartiste=role.idacteur

8.  SELECT titre,realisateur.nom,artiste.nom FROM film INNER JOIN artiste AS realisateur ON film.idmes=realisateur.idartiste INNER JOIN role ON film.idfilm = role.idfilm INNER JOIN artiste ON role.idacteur = artiste.idartiste WHERE realisateur.idartiste!=role.idacteur AND realisateur.prenom = artiste.prenom
   
## Insertion, Modification, Suppression

1. insert into film (idfilm, titre, genre, annee) values (300, 'Film 1', 'Policier', 2020), (301, 'Film 2', 'Policier', 2020)

2. UPDATE film SET annee = 1983, genre = 'Drame' WHERE idfilm = 300 OR idfilm = 301

3. DELETE FROM film where idfilm = 300 OR idfilm = 301
