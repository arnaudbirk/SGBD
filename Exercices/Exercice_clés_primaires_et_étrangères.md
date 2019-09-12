## Exercice – clés primaires et étrangères

Soit les relations Ville et Personne suivantes :

* Ville

  | NOM              | CODE_POSTAL | POPULATION |
  |:---------------- |:-----------:|:----------:|
  | Paris            | 75000       | 2229621    |
  | Champs-sur-Marne | 77420       | 24913      |
  | Ajaccio          | 2A004       | 67507      |

* Personne

  | NOM     | PRENOM | DATE_DE_NAISSANCE |
  |:------- |:------:|:-----------------:|
  | Bonneau | Jean   | 20/02/1995        |
  | Mir     | Abel   | 05/07/1990        |
  | Fonfec  | Sophie | 14/09/1989        |
  | Deuf    | John   | 22/05/1993        |
  | Covers  | Harry  | 12/06/1992        |
  | Mouth   | Emma   | 02/05/1995        |

  ### Questions

  1. Proposez une clé primaire pour chacune des relations.
  2. Comment traduire le fait qu'une personne est née dans une ville (mais plusieurs personnes

     peuvent naître dans la même ville) ?
  3. Comment traduire le fait qu'une personne peut posséder des logements dans différentes

     villes ?
  4. La relation Calendrier(JOUR, SAINT) associe un saint à chacun des jours de l'année. Comment

     la lier à la relation Personne ?
