# L1_9 Lösung Aufgaben zur Wiederholung.sql

# 1
SELECT filmtitel, saalbezeichnung, personalname
FROM kinofilme 
WHERE personalname = 'Schön' 
OR personalname = 'Husch' 
ORDER BY filmtitel;

# 2
SELECT saalnr, saalbezeichnung, plaetze 
FROM kinofilme  
GROUP BY saalnr
ORDER BY plaetze DESC;

# 3
SELECT filmnummer, filmtitel , eintrittspreis, plaetze, eintrittspreis * plaetze AS  	Gesamteinnnahme_je_Film 
FROM kinofilme;

# 4
SELECT COUNT(*) AS Filmanzahl,SUM(eintrittspreis * plaetze) AS Gesamteinnnahme_aller_Filme 
FROM kinofilme;

# 5
SELECT FORMAT(AVG(eintrittspreis),2) AS Durchschnittspreis
FROM kinofilme;

# 6
SELECT filmnummer, filmtitel, eintrittspreis, saalnr 
FROM kinofilme 
WHERE saalnr = 2 
AND eintrittspreis > 9;

# 7
SELECT saalnr, saalbezeichnung, min(plaetze) AS kleinster_Raum 
FROM kinofilme;

# 8
SELECT personalname, COUNT(*) AS  zu_betreuende_Raeume 
FROM kinofilme 
GROUP BY personalname;
