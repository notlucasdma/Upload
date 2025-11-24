# L1_5.5 Lösung Datenbankabfrage Funktionen

# 1	
SELECT COUNT(*)
FROM fahrschueler;

# 1 mit Alias
SELECT COUNT(*) AS Anzahl_der_Fahrschüler
FROM fahrschueler;

# 2	
SELECT MAX(fahrstundenzahl) AS Höchste_Anzahl_an_Fahrstunden
FROM fahrschueler;

# 3	
SELECT AVG(fahrstundenzahl) AS Durchschnittliche_Anzahl_an_Fahrstunden
FROM fahrschueler;

# 3 auf zwei Nachkommastellen gerundet
SELECT FORMAT(AVG(fahrstundenzahl),2) AS Durchschnittliche_Anzahl_an_Fahrstunden
FROM fahrschueler;

# 4	
SELECT SUM(fahrstundenzahl) AS Summe_der_Fahrstunden
FROM fahrschueler;

#5
SELECT nachname, vorname, fahrstundenzahl * 30 AS Umsatz_aus_Fahrstunden_in_€
FROM fahrschueler;

# 6	
SELECT SUM(fahrstundenzahl) * 30 AS Umsatzsumme_aus_Fahrstunden_in_€
FROM fahrschueler;