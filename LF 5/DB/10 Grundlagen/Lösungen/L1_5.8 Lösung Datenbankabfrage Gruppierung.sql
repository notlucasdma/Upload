# L1_5.8 Lösung Datenbankabfrage Gruppierung

# 1	
SELECT ort, COUNT(*) AS Anzahl_der_Fahrschueler
FROM fahrschueler
GROUP BY ort;

# 2	
SELECT ort, SUM(fahrstundenzahl) AS Fahrstunden_je_Ort
FROM fahrschueler
GROUP BY ort;

# 3	
SELECT ort, COUNT(*) AS Anzahl_der_Fahrschueler
FROM fahrschueler
WHERE ort = 'Schorndorf'
OR ort = 'Welzheim'
GROUP BY ort;

# 4	
SELECT ort, SUM(fahrstundenzahl) AS Fahrstunden_Lorch_Pluederhausen
FROM fahrschueler
WHERE ort ='Lorch'
OR ort ='Plüderhausen'
GROUP BY ort;

# 5	
SELECT fahrstundenzahl, COUNT(*) AS Anzahl_der_Fahrschueler
FROM fahrschueler
WHERE fahrstundenzahl < 4	
GROUP BY fahrstundenzahl;

# 6	
SELECT plz, ort, COUNT(*) AS Anzahl_der_Fahrschueler
FROM fahrschueler
WHERE plz LIKE '736%'
GROUP BY ort;

# 7	
SELECT ort, COUNT(*) AS Anzahl_der_Fahrschueler
FROM fahrschueler
GROUP BY ort
HAVING COUNT(*) >2;

# 8	
SELECT ort, SUM(fahrstundenzahl) AS Fahrstunden_je_Ort
FROM fahrschueler
GROUP BY ort
HAVING SUM(fahrstundenzahl) > 20;