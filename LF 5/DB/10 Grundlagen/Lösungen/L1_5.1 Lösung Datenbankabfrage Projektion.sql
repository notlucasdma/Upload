# L1_5.1 Lösung Datenbankabfrage Projektion

# 2	
SELECT schuelernr, vorname, nachname 
FROM fahrschueler
ORDER BY nachname;

# 3	
SELECT schuelernr, vorname, nachname, ort 
FROM fahrschueler
ORDER BY ort DESC;

# 4	
SELECT schuelernr, vorname, nachname 
FROM fahrschueler
ORDER BY nachname, vorname;