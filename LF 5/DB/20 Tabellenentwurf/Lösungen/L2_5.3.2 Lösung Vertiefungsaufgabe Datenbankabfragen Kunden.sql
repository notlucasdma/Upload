# L2_5.3.2 Lösung Vertiefungsaufgabe Datenbankabfragen Kunden

# 1	
SELECT firma, telefon, email, nachname
FROM kunden, mitarbeiter
WHERE kunden.mitarbeiternr = mitarbeiter.mitarbeiternr
AND nachname = "Daumer"
ORDER BY firma;

# 2	
SELECT vorname, nachname, strasse, plz, ortname
FROM orte, mitarbeiter
WHERE orte.ortnr=mitarbeiter.ortnr
AND ortname = "Ludwigsburg"
ORDER BY nachname;

# 3	
SELECT nachname, COUNT(kunden.mitarbeiternr) AS Anzahl_Kunden
FROM kunden, mitarbeiter
WHERE kunden.mitarbeiternr = mitarbeiter.mitarbeiternr
GROUP BY nachname;

# 4	
SELECT nachname, COUNT(kunden.mitarbeiternr) AS Anzahl_Kunden
FROM kunden, mitarbeiter
WHERE kunden.mitarbeiternr = mitarbeiter.mitarbeiternr
GROUP BY nachname
HAVING Anzahl_kunden > 8;

# 5	
SELECT nachname, COUNT(kunden.mitarbeiternr) AS Anzahl_Kunden
FROM kunden, mitarbeiter
WHERE kunden.mitarbeiternr = mitarbeiter.mitarbeiternr
AND nachname = "Mainzer";

# 6	
SELECT bezeichnung AS Abteilung, COUNT(mitarbeiternr) AS Anzahl_Mitarbeiter
FROM abteilungen, mitarbeiter
WHERE abteilungen.abteilungnr = mitarbeiter. abteilungnr
GROUP BY bezeichnung;

# 7	
SELECT bezeichnung AS Abteilung, COUNT(mitarbeiternr) AS Anzahl_Mitarbeiter
FROM abteilungen, mitarbeiter, orte
WHERE abteilungen.abteilungnr = mitarbeiter. abteilungnr
AND orte.ortnr = mitarbeiter.ortnr
AND bezeichnung = "Fertigung"
AND ortname = "Esslingen";

# 8	
SELECT nachname, vorname, gehalt, gehalt*13 AS Jahresgehalt
FROM mitarbeiter, abteilungen
WHERE abteilungen.abteilungnr = mitarbeiter.abteilungnr
AND (bezeichnung = "Personal"
OR bezeichnung = "Forschung")
ORDER BY bezeichnung, nachname;

# 9	
SELECT bezeichnung AS Abteilung, SUM(gehalt) AS Gehaltssumme
FROM abteilungen, mitarbeiter
WHERE abteilungen.abteilungnr = mitarbeiter. abteilungnr
GROUP BY bezeichnung;

# 10	
SELECT bezeichnung AS Abteilung, SUM(gehalt) AS Gehaltssumme
FROM abteilungen, mitarbeiter
WHERE abteilungen.abteilungnr = mitarbeiter. abteilungnr
AND bezeichnung = 'Verwaltung'
GROUP BY bezeichnung;

# 11	
SELECT AVG(gehalt) AS Durchschnittsgehalt
FROM abteilungen, mitarbeiter
WHERE abteilungen.abteilungnr = mitarbeiter. abteilungnr;

# 12	
SELECT bezeichnung AS Abteilung, AVG(gehalt) AS Durchschnittsgehalt
FROM abteilungen, mitarbeiter
WHERE abteilungen.abteilungnr = mitarbeiter. abteilungnr
GROUP BY bezeichnung;