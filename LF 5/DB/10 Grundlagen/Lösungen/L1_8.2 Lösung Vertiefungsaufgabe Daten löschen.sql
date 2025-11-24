# L1_8.2 Lösung Vertiefungsaufgabe Daten löschen

# 1
DELETE FROM fahrraeder
WHERE anschaffungswert < 100
OR fahrradart = 'Kinderrad';


# 2	
DELETE FROM fahrraeder
WHERE 2018 - YEAR(kaufdatum) >= 4;

# 2 Alternative
DELETE FROM fahrraeder
WHERE YEAR(kaufdatum) <= 2018 -4;
