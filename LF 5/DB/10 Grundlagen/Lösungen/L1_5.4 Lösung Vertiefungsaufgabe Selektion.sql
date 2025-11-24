# L1_5.4 Lösung Vertiefungsaufgabe Selektion

# 1	
SELECT * 
FROM fahrraeder
WHERE fahrradart = 'Mountainbike';

# 2	
SELECT * 
FROM fahrraeder
WHERE fahrradart = 'Mountainbike'
ORDER BY anschaffungswert DESC;

# 3	
SELECT fahrradnr, tagesmietpreis 
FROM fahrraeder
WHERE tagesmietpreis > 20;

# 4	
SELECT *
FROM fahrraeder
WHERE kaufdatum < '2016-01-01';

# 5	
SELECT *
FROM fahrraeder
WHERE kaufdatum >= '2016-01-01'
AND kaufdatum <= '2016-12-31';

# 6	
SELECT * 
FROM fahrraeder
WHERE fahrradart like 'T%';

# 7	
SELECT * 
FROM fahrraeder
WHERE rahmennr like '%98%';

# 8	
SELECT * 
FROM fahrraeder
WHERE anschaffungswert > 400
and tagesmietpreis < 17;

# 9	
SELECT fahrradnr, tagesmietpreis 
FROM fahrraeder
WHERE tagesmietpreis > 20 
OR tagesmietpreis < 13;

# 10 - Erster Ansatz, aber falsche Lösung
SELECT fahrradnr, tagesmietpreis, fahrradart
FROM fahrraeder
WHERE tagesmietpreis > 20 
OR tagesmietpreis < 13
and fahrradart = 'Mountainbike';

# 10 - Richtige Lösung
SELECT fahrradnr, tagesmietpreis, fahrradart 
FROM fahrraeder
WHERE tagesmietpreis > 20 and fahrradart = 'Mountainbike'
OR tagesmietpreis < 13 and fahrradart = 'Mountainbike';

# 10 - Richtige Lösung, eleganter
SELECT fahrradnr, tagesmietpreis, fahrradart 
FROM fahrraeder
WHERE (tagesmietpreis > 20 OR tagesmietpreis < 13)
AND fahrradart = 'Mountainbike';


