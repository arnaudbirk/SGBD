# Films

## Selection

1. Tous les titres de films.
2. Nom et prénom des internautes auvergnats.
3. Titre et année de tous les drames, triés par année descendante (ORDER BY).
4. Nom et année de naissance des artistes nés avant 1950.
5. Titre et année de tous les films parus entre 1960 et 1980
6. Titre, genre et résumé des films qui sont soit des drames, soit des westerns (utilisez la construction
   IN), et dont le résumé contient la chaîne de caractères « vie » (LIKE).
7. Les artistes dont le nom commence par ’H’.
8. Quels sont les artistes dont on ignore l’année de naissance ? (IS NULL)
9. Prénom, nom et âge de chaque artiste (NB : l’âge est la différence entre l’année courante et l’année
   de naissance). Nommez âge la colonne obtenue (AS).

## Jointures

1. Qui a joué le rôle de Morpheus (nom et prénom) ?
2. Qui est le réalisateur de Alien ?
3. Prénom et nom des internautes qui ont donné une note de 4 à un film (donner aussi le titre du film).
4. Quels acteurs ont joué quel rôle dans le film Vertigo ?
5. Titre des films dans lesquels a joué Bruce Willis. Donner aussi le nom du rôle.
6. Films dont le réalisateur est Tim Burton, et un des acteurs est Johnny Depp
7. Quel metteur en scène a tourné dans ses propres films ? Donner le nom, le rôle et le titre des films.
8. Dans quels films le metteur en scène a-t-il le même prénom que l’un des interprètes ? (titre, nom
   du metteur en scène, nom de l’interprète). Le metteur en scène et l’interprète ne doivent pas être la
   même personne.

## Insertion, Modification, Suppresion

1. Insérez 2 films de votre choix

2. Modifier la date de sortie ainsi que le genre du film que vous venez d'inserez

3. Supprimer ce nouveau film

## Requêtes imbriquées

Les requêtes suivantes peuvent s’exprimer avec une imbrication des clauses SELECT, mais on peut
également utiliser des jointures comme dans la partie précédente. Si le cœur vous en dit, essayez les
deux versions.

1. Donnez le titre et année des films qui ont le même genre que Matrix.
2. Donnez les nom et prénom des acteurs qui ont mis en scène un film.
3. Donnez le nom des internautes qui ont noté le film Alien. Donnez ensuite également la note.

## Négation

1. Les films sans rôle.
2. Nom et prénom des acteurs qui n’ont jamais mis en scène de film.
3. Les internautes qui n’ont pas noté de film paru en 1999.

## Fonction de groupe

1. Quelle est le nombre de films notés par l’internaute *rigaux@cnam.fr*, quelle est la moyenne des notes données, la note minimale et la note maximale ?
2. Combien de fois Bruce Willis a-t-il joué le rôle de McClane ?
3. Année du film le plus ancien et du film le plus récent.
4. Combien de films la base contient elle par année (GROUP BY)
5. id, Nom et prénom des réalisateurs, et nombre de films qu’ils ont tournés.
