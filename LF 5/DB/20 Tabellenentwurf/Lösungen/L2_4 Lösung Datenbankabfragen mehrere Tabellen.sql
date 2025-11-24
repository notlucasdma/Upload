# L2_4 Lösung Datenbankabfragen mehrere Tabellen

# 1	
SELECT nachname, vorname, strasse, hausnr, plz, ort 
FROM fahrlehrer, orte
WHERE fahrlehrer.ortnr = orte.ortnr;

# 2 Ansatz
SELECT vorname,nachname, nachname 
FROM fahrschueler, fahrlehrer
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr;

# 2	Verbesserung
SELECT fahrschueler.vorname,fahrschueler.nachname, fahrlehrer.nachname 
FROM fahrschueler, fahrlehrer
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr;

Fehlerhafte Lösung:
SELECT vorname,nachname, nachname 
FROM fahrschueler, fahrlehrer
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr;
	
Die Workbench liefert diese Fehlermeldung, weil das Attribut vorname sowohl in fahrschueler als auch in fahrlehrer vorkommt.

# 3	
SELECT fahrschueler.nachname, fahrschueler.vorname 
FROM fahrschueler, fahrlehrer
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr
AND fahrlehrer.nachname = 'Blechle';

#4	
SELECT fahrschueler.nachname, fahrschueler.vorname, ort
FROM fahrschueler, fahrlehrer, orte
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr
AND fahrschueler.ortnr = orte.ortnr
AND fahrlehrer.nachname = 'Blechle';

# 5	
SELECT DISTINCT ort
FROM fahrschueler, fahrlehrer, orte
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr
AND fahrschueler.ortnr = orte.ortnr
AND fahrlehrer.nachname = 'Lempke';

# 6	
SELECT DISTINCT ort
FROM fahrschueler, fahrlehrer, orte
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr
AND fahrschueler.ortnr = orte.ortnr
AND fahrlehrer.nachname = 'Lempke'
AND ort LIKE '%e%';

#7	
SELECT ort, COUNT(*) AS Anzahl_der_Fahrschueler
FROM fahrschueler, orte
WHERE fahrschueler.ortnr = orte.ortnr
GROUP BY ort;

#8	
SELECT ort, COUNT(*) AS  Anzahl_der_Fahrschueler
FROM fahrschueler, orte
WHERE fahrschueler.ortnr = orte.ortnr
GROUP BY ort
HAVING COUNT(*) > 2;	

#9	
SELECT count(*) AS Anzahl_der_Fahrschueler
FROM fahrschueler, fahrlehrer
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr
AND fahrlehrer.nachname = 'Schröder';

# 10	
SELECT fahrlehrer.nachname, count(*) AS Anzahl_der_Fahrschueler
FROM fahrschueler, fahrlehrer
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr
GROUP BY fahrlehrer.fahrlehrernr;

# 11	
SELECT fahrschueler.nachname, YEAR(NOW()) - YEAR(fahrschueler.geburtsdatum) AS Alter_der_Fahrschueler, YEAR(NOW()) AS Bezugsjahr
FROM fahrschueler, fahrlehrer
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr
AND fahrlehrer.nachname = 'Schröder';

# 12	
SELECT AVG(YEAR(NOW()) - YEAR(fahrschueler.geburtsdatum)) AS Durchschnittsalter
FROM fahrschueler, fahrlehrer
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr
AND fahrlehrer.nachname = 'Schröder';

# 13	
SELECT fahrlehrer.nachname, AVG(YEAR(NOW()) - YEAR(fahrschueler.geburtsdatum)) AS Durchschnittsalter
FROM fahrschueler, fahrlehrer
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr
GROUP BY fahrlehrer.fahrlehrernr; 

# 14	
SELECT fahrlehrer.nachname, SUM(fahrstundenzahl) AS Summe_aller_Fahrstunden
FROM fahrschueler, fahrlehrer
WHERE fahrschueler.fahrlehrernr = fahrlehrer.fahrlehrernr
GROUP BY fahrlehrer.nachname
HAVING fahrlehrer.nachname = 'Lempke';

# 15	
SELECT AVG(fahrstundenzahl) AS Durchschnitt_aller_Fahrstunden
FROM fahrschueler;

# Zusatzaufgaben

# A	
SELECT FORMAT(AVG(fahrstundenzahl),2) AS Durchschnitt_aller_Fahrstunden
FROM fahrschueler;

# B	unflexible Lösung
SELECT nachname, vorname, fahrstundenzahl
FROM fahrschueler
WHERE fahrstundenzahl > 10.92;

# C	
SELECT nachname, vorname, fahrstundenzahl
FROM fahrschueler
WHERE fahrstundenzahl  > (SELECT AVG(fahrstundenzahl) 
	FROM fahrschueler);

# D	
SELECT AVG(YEAR(NOW()) - YEAR(geburtsdatum)) AS Durchschnittsalter, 
	YEAR(NOW())  AS Bezugsjahr
 FROM fahrschueler


# E	
SELECT nachname, vorname, YEAR(NOW()) - YEAR(geburtsdatum) AS 'Alter', 
	YEAR(NOW())  AS Bezugsjahr
FROM fahrschueler
WHERE YEAR(NOW()) - YEAR(geburtsdatum)  > 
(SELECT AVG(YEAR(NOW()) -  YEAR(geburtsdatum))
FROM fahrschueler); 

# F	
SELECT nachname, vorname, fahrstundenzahl, geburtsdatum, YEAR(NOW())  - 	YEAR(geburtsdatum) AS 'Alter', YEAR(NOW())  AS Bezugsjahr
FROM fahrschueler
WHERE YEAR(NOW()) - YEAR(geburtsdatum)  > 
	(SELECT AVG(YEAR(NOW()) -  YEAR(geburtsdatum))
	FROM fahrschueler)
AND fahrstundenzahl  > (SELECT AVG(fahrstundenzahl) 
	FROM fahrschueler);

#G	
SELECT fahrschueler.vorname,fahrschueler.nachname, fahrlehrer.vorname, 
	fahrlehrer.nachname
FROM fahrlehrer,fahrschueler
WHERE fahrlehrer.fahrlehrernr=fahrschueler.fahrlehrernr
AND fahrlehrer.ortnr =  (SELECT ortnr 
	FROM orte 
	WHERE ort='Backnang')
AND fahrschueler.ortnr =  (SELECT ortnr 
	FROM orte 
	WHERE ort='Welzheim');