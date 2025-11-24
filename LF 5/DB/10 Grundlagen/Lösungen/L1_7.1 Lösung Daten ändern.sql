# L1_7.1 Lösung	Daten ändern

# 1	
UPDATE fahrschueler
SET email = 'hakan.oeztuerk@web.de ', geburtsdatum = '2002-05-21'; fahrstundenzahl = 3
WHERE schuelernr = '14'

# 2	
UPDATE fahrschueler
SET strasse= 'Gänseweg', hausnr = '19'
WHERE schuelernr = '15';