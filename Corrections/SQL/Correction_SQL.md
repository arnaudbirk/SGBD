1.

```sql
SELECT *
FROM villes_france_free
ORDER BY ville_population_2012 DESC
LIMIT 10;
```

2.

```sql
SELECT * 
FROM villes_france_free  
ORDER BY ville_surface ASC 
LIMIT 50;
```

3.

```sql
SELECT * 
FROM departement 
WHERE departement_code LIKE '97%';
```

4.

```sql
SELECT * 
FROM villes_france_free
LEFT JOIN departement ON departement_code = ville_departement
ORDER BY ville_population_2012 DESC 
LIMIT 10;
```

5.

```sql
SELECT departement_nom, ville_departement, COUNT(*) AS nbr_items
FROM villes_france_free
JOIN departement ON departement_code = ville_departement
GROUP BY ville_departement, departement_nom
ORDER BY nbr_items DESC;
```

6.

```sql
SELECT departement_nom, ville_departement, SUM(ville_surface) AS dpt_surface
 FROM villes_france_free
 LEFT JOIN departement ON departement_code = ville_departement
GROUP BY ville_departement, departement_nom
 ORDER BY dpt_surface DESC
LIMIT 10;
```

7.

```sql
SELECT COUNT(*)
FROM villes_france_free
WHERE ville_nom LIKE 'SAINT%'
```

8.

```sql
SELECT ville_nom, COUNT(*) AS nbt_item
FROM villes_france_free
GROUP BY ville_nom
ORDER BY nbt_item DESC;
```

9.

```sql
SELECT * 
FROM villes_france_free  
WHERE ville_surface > (SELECT AVG(ville_surface) FROM villes_france_free);
```

10.

```sql
SELECT ville_departement, SUM(ville_population_2012) AS population_2012
FROM villes_france_free
GROUP BY ville_departement,ville_population_2012
HAVING ville_population_2012 > 2000000
ORDER BY population_2012 DESC;
```











