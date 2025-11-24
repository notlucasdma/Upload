# L1_5.6 Lösung Vertiefungsaufgabe Funktionen

# 1	
SELECT COUNT(*) AS Anzahl_der_Mountainbikes
FROM fahrraeder
WHERE fahrradart = 'Mountainbike';

# 2	
SELECT  MAX(anschaffungswert) AS Hoechster_Anschaffungswert
FROM fahrraeder;

# 3	
SELECT  FORMAT(AVG(tagesmietpreis),2) AS Durchschnittliche_Tagesmietpreis
FROM fahrraeder;

# 4	
SELECT  SUM(anschaffungswert) AS Anschaffungswert_aller_Fahrraeder
FROM fahrraeder;

# 5	
SELECT SUM(anschaffungswert * 0.2) AS Jaehrliche_Abschreibungssumme
FROM fahrraeder;

# 6	
SELECT fahrradnr, fahrradart, FORMAT(tagesmietpreis * 7 * 0.7,0) AS Wochenmietpreis_gerundet
FROM fahrraeder
WHERE fahrradart = 'Mountainbike' 
OR fahrradart = 'Rennrad';

# 7	
SELECT fahrradnr, anschaffungswert, YEAR(kaufdatum) AS Anschaffungsjahr
FROM fahrraeder;

# 8	
SELECT fahrradnr, fahrradart, kaufdatum,
YEAR(NOW()) - YEAR(kaufdatum)  AS Alter_in_Jahren, YEAR(NOW()) AS Berechnungsjahr
FROM fahrraeder
WHERE fahrradart = 'Mountainbike' 
OR fahrradart = 'Rennrad';