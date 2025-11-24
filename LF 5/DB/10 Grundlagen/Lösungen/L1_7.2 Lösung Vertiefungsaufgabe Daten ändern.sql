# L1_7.2 Lösung Vertiefungsaufgabe Daten ändern

# 1	
UPDATE fahrraeder
SET tagesmietpreis = 15
WHERE fahrradnr = 5;

# 2	
UPDATE fahrraeder
SET tagesmietpreis = tagesmietpreis + 2.85
WHERE fahrradnr = 1;

# 3	
UPDATE fahrraeder
SET tagesmietpreis = tagesmietpreis * 0.88
WHERE fahrradnr = 16;

#4	
UPDATE fahrraeder
SET tagesmietpreis = tagesmietpreis * 1.2
WHERE fahrradart = 'Spezialrad';

# 5	
UPDATE fahrraeder
SET tagesmietpreis = tagesmietpreis * 0.95
WHERE fahrradart != 'Trekkingrad' 
AND fahrradart != 'Mountainbike';