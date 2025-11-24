# L1_5.2 Lösung Vertiefungsaufgabe Projektion

# 1
SELECT fahrradnr, tagesmietpreis, fahrradart 
FROM fahrraeder;

# 2
SELECT fahrradnr, tagesmietpreis, fahrradart
FROM fahrraeder
ORDER BY tagesmietpreis DESC;

# 3
SELECT fahrradnr, fahrradart, tagesmietpreis
FROM fahrraeder
ORDER BY fahrradart, tagesmietpreis;

# 4
SELECT *
FROM fahrraeder
ORDER BY anschaffungswert DESC, kaufdatum;