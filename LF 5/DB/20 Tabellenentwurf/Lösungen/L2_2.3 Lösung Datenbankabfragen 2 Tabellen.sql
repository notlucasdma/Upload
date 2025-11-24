# L2_2.3 Lösung Datenbankabfragen 2 Tabellen

# 1	
SELECT vorname, nachname, strasse, hausnr, plz, ort 
FROM fahrschueler, orte
WHERE fahrschueler.ortnr = orte.ortnr;

# 2	
SELECT vorname, nachname, plz, ort 
FROM fahrschueler, orte
WHERE fahrschueler.ortnr = orte.ortnr
AND ort = 'Schorndorf';

# 3	
SELECT vorname, nachname, plz, ort 
FROM fahrschueler, orte
WHERE fahrschueler.ortnr = orte.ortnr
AND (ort = 'Schorndorf'
OR ort = 'Welzheim');

# 4	
SELECT ort, count(*) AS Anzahl_Fahrschueler
FROM fahrschueler, orte
WHERE fahrschueler.ortnr = orte.ortnr
GROUP BY ort;

# 5	
SELECT ort, count(*) AS Anzahl_Fahrschueler
FROM fahrschueler, orte
WHERE fahrschueler.ortnr = orte.ortnr
GROUP BY ort
HAVING Anzahl_Fahrschüler > 2;