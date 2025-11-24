# L1_5.3 Lösung	Datenbankabfrage Selektion

# 2
SELECT * 
FROM fahrschueler
WHERE ort = 'Schorndorf';

# 3	
SELECT vorname, nachname, geburtsdatum 
FROM fahrschueler
WHERE nachname = 'Dressel';

# 4
SELECT vorname, nachname, geburtsdatum 
FROM fahrschueler
WHERE nachname = 'Dressel'
ORDER BY vorname;

# 5	
SELECT * 
FROM fahrschueler
WHERE fahrstundenzahl > 20;

# 6
SELECT * 
FROM fahrschueler
WHERE geburtsdatum < '2001-01-01';

# 7
SELECT * 
FROM fahrschueler
WHERE geburtsdatum < '2001-01-01'
ORDER BY geburtsdatum DESC;

# 8	
SELECT * 
FROM fahrschueler
WHERE nachname LIKE 'D%';

# 9
SELECT * 
FROM fahrschueler
WHERE ort = 'Schorndorf' 
AND strasse = 'Drosselweg';

# 10
SELECT * 
FROM fahrschueler
WHERE geburtsdatum >= '2000-01-01' 
AND geburtsdatum <= '2001-12-31';

# 11
SELECT * 
FROM fahrschueler
WHERE geburtsdatum < '2000-01-01' 
OR geburtsdatum > '2001-12-31';

# 12
SELECT * 
FROM fahrschueler
WHERE  ort != 'Schorndorf';

# 12 Alternative:
SELECT *
FROM fahrschueler
WHERE NOT ort = 'Schorndorf';