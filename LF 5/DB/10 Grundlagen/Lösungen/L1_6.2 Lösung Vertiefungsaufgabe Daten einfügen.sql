# L1_6.2 Lösung Vertiefungsaufgabe Daten einfügen

# 1	
INSERT INTO fahrraeder
(fahrradnr, rahmennr, anschaffungswert, kaufdatum, fahrradart)
VALUES
(18, '380/4532 ', 2499, '2019-02-21', 'Mountainbike');

# 2	
INSERT INTO fahrraeder
(fahrradnr, rahmennr, anschaffungswert, kaufdatum, fahrradart) 
VALUES 
(19, '380/4755', 2499, '2019-02-21', 'Mountainbike');

# 3	
INSERT INTO fahrraeder
(fahrradnr, rahmennr, anschaffungswert, kaufdatum, fahrradart) 
VALUES 
(20, 'TS-457-5', 889, '2019-02-21', 'Trekkingrad');

# Alternative:
INSERT INTO fahrraeder
(fahrradnr, rahmennr, anschaffungswert, kaufdatum, fahrradart)
VALUES
(18, '380/4532 ', 2499, '2019-02-21', 'Mountainbike'),
(19, '380/4755', 2499, '2019-02-21', 'Mountainbike'),
(20, 'TS-457-5', 889, '2019-02-21', 'Trekkingrad');