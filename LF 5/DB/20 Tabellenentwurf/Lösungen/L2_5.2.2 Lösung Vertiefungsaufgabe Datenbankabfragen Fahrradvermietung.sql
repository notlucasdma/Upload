# L2_5.2.2 Lösung Vertiefungsaufgabe Datenbankabfragen Fahrradvermietung

# 1	
SELECT fahrradnr, bezeichnung, anschaffungswert, tagesmietpreis
FROM fahrraeder, modelle
WHERE modelle.modellnr = fahrraeder.modellnr
ORDER BY fahrradnr;

# 2	
SELECT fahrradnr, bezeichnung, herstellername, tagesmietpreis  
FROM fahrraeder, modelle, hersteller
WHERE fahrraeder.modellnr = modelle.modellnr
AND modelle.herstellernr = hersteller.herstellernr
ORDER BY tagesmietpreis DESC;

# 3	
SELECT fahrradnr, bezeichnung, herstellername
FROM fahrraeder, modelle, hersteller
WHERE fahrraeder.modellnr = modelle.modellnr
AND modelle.herstellernr = hersteller.herstellernr
AND herstellername = 'Scott';

# 4	
SELECT bezeichnung, hersteller.herstellernr, herstellername, tagesmietpreis
FROM fahrraeder, modelle, hersteller
WHERE fahrraeder.modellnr = modelle.modellnr
AND modelle.herstellernr = hersteller.herstellernr
AND herstellername = 'Scott'
AND tagesmietpreis > 12;

# 5	
SELECT MAX(tagesmietpreis) AS Hoechstpreis_Scott
FROM modelle, hersteller
WHERE modelle.herstellernr = hersteller.herstellernr
AND herstellername = 'Scott';

# 6	
SELECT COUNT(*) AS Anzahl_Fahrraeder_von_Scott
FROM fahrraeder, modelle, hersteller
WHERE fahrraeder.modellnr = modelle.modellnr
AND modelle.herstellernr = hersteller.herstellernr
AND herstellername = 'Scott';

# 7	
SELECT fahrradnr, modelle.bezeichnung, herstellername, fahrradarten.bezeichnung
FROM fahrraeder, fahrradarten, modelle, hersteller
WHERE fahrraeder.modellnr = modelle.modellnr
AND fahrradarten.artnr = modelle.artnr
AND modelle.herstellernr = hersteller.herstellernr
AND fahrradarten.bezeichnung = 'Kinderrad'; 

# 8	
SELECT COUNT(*) AS Anzahl_Kinderraeder
FROM fahrraeder, fahrradarten, modelle
WHERE fahrraeder.modellnr = modelle.modellnr
AND fahrradarten.artnr= modelle.artnr
AND fahrradarten.bezeichnung = 'Kinderrad';

# 9	
SELECT fahrradnr,modelle.bezeichnung AS Modell, fahrradarten.bezeichnung AS Fahrradart
FROM fahrraeder, modelle, fahrradarten
WHERE fahrraeder.modellnr =modelle.modellnr
AND fahrradarten.artnr=modelle.artnr
AND fahrradarten.bezeichnung != 'Kinderrad'
AND fahrradarten.bezeichnung != 'Jugendrad';

# 10	
SELECT FORMAT(AVG(tagesmietpreis),2) AS Durchschnittspreis
FROM fahrraeder, fahrradarten, modelle
WHERE fahrraeder.modellnr = modelle.modellnr
AND fahrradarten.artnr= modelle.artnr
AND fahrradarten.bezeichnung = 'Kinderrad';

# 11	
SELECT fahrradarten.bezeichnung, COUNT(fahrradnr) AS Anzahl
FROM fahrraeder, modelle,fahrradarten
WHERE fahrraeder.modellnr =modelle.modellnr
AND fahrradarten.artnr=modelle.artnr
GROUP BY fahrradarten.bezeichnung
ORDER BY fahrradarten.bezeichnung;

# 12	
SELECT fahrradarten.bezeichnung, COUNT(*) AS Anzahl
FROM fahrraeder, modelle,fahrradarten
WHERE fahrraeder.modellnr =modelle.modellnr
AND fahrradarten.artnr=modelle.artnr
GROUP BY fahrradarten.bezeichnung
HAVING COUNT(*) > 3
ORDER BY fahrradarten.bezeichnung;

# 13	
SELECT herstellername, COUNT(*) AS Anzahl
FROM fahrraeder, modelle, hersteller
WHERE fahrraeder.modellnr = modelle.modellnr
AND modelle.herstellernr = hersteller.herstellernr
GROUP BY herstellername;

# 14	
SELECT herstellername, COUNT(*) AS Anzahl
FROM fahrraeder, modelle, hersteller
WHERE fahrraeder.modellnr = modelle.modellnr
AND modelle.herstellernr = hersteller.herstellernr
AND herstellername LIKE 'B%'
GROUP BY herstellername
ORDER BY herstellername;

# Zusatzaufgaben

# A	
SELECT modelle.bezeichnung, tagesmietpreis 
FROM modelle, fahrradarten
WHERE modelle.artnr=fahrradarten.artnr
AND fahrradarten.bezeichnung = 'Kinderrad'
AND tagesmietpreis = (SELECT MIN(tagesmietpreis)
	FROM fahrradarten,modelle
	WHERE modelle.artnr=fahrradarten.artnr
	AND fahrradarten.bezeichnung='Kinderrad');

# B	
SELECT modelle.bezeichnung AS Modell, herstellername, tagesmietpreis, 	fahrradarten.bezeichnung
FROM fahrraeder,modelle, hersteller, fahrradarten
WHERE fahrraeder.modellnr = modelle.modellnr
AND fahrradarten.artnr = modelle.artnr
AND modelle.herstellernr = hersteller.herstellernr
AND tagesmietpreis >  (SELECT AVG(tagesmietpreis)
FROM fahrraeder,modelle
WHERE fahrraeder.modellnr=modelle.modellnr);

# C	
SELECT bezeichnung, kaufdatum
FROM fahrraeder, modelle
WHERE fahrraeder.modellnr = modelle.modellnr
AND DATEDIFF(NOW(),kaufdatum) = (SELECT MIN(DATEDIFF(NOW(),kaufdatum) )
	FROM fahrraeder);