# L1_5.9 Lösung Vertiefungsaufgabe Gruppierung

# 1	
SELECT fahrradart, COUNT(*) AS Anzahl_je_Fahrradart
FROM fahrraeder
GROUP BY fahrradart;

# 2	
SELECT fahrradart, COUNT(*) AS Anzahl_je_Fahrradart
FROM fahrraeder
GROUP BY fahrradart
HAVING fahrradart="Mountainbike"
OR fahrradart="Rennrad";

# 3	
SELECT YEAR(kaufdatum) AS Kaufjahr ,COUNT(*) AS Anzahl
FROM fahrraeder
GROUP BY YEAR(kaufdatum);

# 4	
SELECT YEAR(kaufdatum) AS Kaufjahr ,COUNT(*) AS Anzahl
FROM fahrraeder
WHERE YEAR(kaufdatum) < 2016
GROUP BY YEAR(kaufdatum);

# 5	
SELECT DISTINCT fahrradart, tagesmietpreis
FROM fahrraeder 
WHERE fahrradart = 'Kinderrad';