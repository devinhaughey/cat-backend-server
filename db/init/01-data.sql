\connect cat_database

INSERT INTO cat_schema.breed_table (id, name, description, image_url, temperament, origin) VALUES 
(1,'Dragon Li or Chinese Li Hua','Short, Striped tabby','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Dragon_Li_-_Li_Hua_Mau1.jpg/100px-Dragon_Li_-_Li_Hua_Mau1.jpg','cat-like','China')
,(2,'Abyssinian','Short, Ticked','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Gustav_chocolate.jpg/100px-Gustav_chocolate.jpg','meh','Ethiopia')
,(3,'Aegean','Semi-long, Bicolored or tricolored','https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Aegean_cat.jpg/100px-Aegean_cat.jpg','meh','Greece')
,(4,'American Curl','Short/long, All','https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/American_curl_2.jpg/100px-American_curl_2.jpg','meh','United States')
,(5,'American Bobtail','Short/long, All','https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/American_bobtail_2.jpg/100px-American_bobtail_2.jpg','meh','United States')
,(6,'American Shorthair','Short, All but colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/American_Shorthair.jpg/100px-American_Shorthair.jpg','meh','United States')
,(7,'American Wirehair','Rex, All but colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/American_Wirehair_-_CFF_cat_show_Heinola_2008-05-04_IMG_8721.JPG/100px-American_Wirehair_-_CFF_cat_show_Heinola_2008-05-04_IMG_8721.JPG','meh','United States')
,(8,'Aphrodite Giant','All, All but cinammon and chocolate','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Aphrodite%27s_Giant.jpg/100px-Aphrodite%27s_Giant.jpg','meh','Cyprus')
,(9,'Arabian Mau','Short, ','https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/3yoArabianMau.jpeg/100px-3yoArabianMau.jpeg','meh','Arabian Peninsula')
,(10,'Australian Mist','Short, Spotted or tabby','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Australian_Mist.jpg/100px-Australian_Mist.jpg','meh','Australia')
;
INSERT INTO cat_schema.breed_table (id, name, description, image_url, temperament, origin) VALUES 
(11,'Asian','Short, Evenly solid','https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/BrownVarientAsianCat.JPG/100px-BrownVarientAsianCat.JPG','meh','Developed in the United Kingdom (foundation stock from Asia)')
,(12,'Asian Semi-longhair','Semi-long, Evenly solid','https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Tiffanie_at_cat_show.jpg/100px-Tiffanie_at_cat_show.jpg','meh','United Kingdom')
,(13,'Balinese','Long, Colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Oskar.jpg/100px-Oskar.jpg','meh','Developed in the United States (foundation stock from Thailand)')
,(14,'Bambino','Hairless or downy, ','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Oskar.jpg/100px-Oskar.jpg','meh','United States')
,(15,'Bengal','Short, Spotted, marbled, or rosetted','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/BengalCat_Stella.jpg/100px-BengalCat_Stella.jpg','meh','Developed in the United States (foundation stock from Asia)')
,(16,'Birman','Semi-long, Colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Birman2.jpg/100px-Birman2.jpg','chill','Developed in France (foundation stock from Burma, etc.)')
,(17,'Bombay','Short, Solid black','https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Close_up_of_a_black_domestic_cat.jpg/100px-Close_up_of_a_black_domestic_cat.jpg','cat-like','Developed in the United States (some foundation stock from Burma and Thailand)')
,(18,'Brazilian Shorthair','Short, All','https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Gato_pelo_curto_brasileiro.JPG/100px-Gato_pelo_curto_brasileiro.JPG','cuddley','Brazil')
,(19,'British Semi-longhair','Medium, All','https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/British_Longhair_-_Black_Silver_Shaded.jpg/100px-British_Longhair_-_Black_Silver_Shaded.jpg','cuddley','United Kingdom')
,(20,'British Shorthair','Short, All','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Britishblue.jpg/100px-Britishblue.jpg','cat-like','United Kingdom')
;
INSERT INTO cat_schema.breed_table (id, name, description, image_url, temperament, origin) VALUES 
(21,'British Longhair','Long, All','https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/British_Longhair_-_Black_Silver_Shaded.jpg/100px-British_Longhair_-_Black_Silver_Shaded.jpg','cat-like','United Kingdom')
,(22,'Burmese','Short, Solid','https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Blissandlucky11.jpg/100px-Blissandlucky11.jpg','cuddley','Burma')
,(23,'Burmilla','Short/long, Solid, in Silver Shaded and Silver Tipped patterns','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Male_Burmilla_cat.jpeg/100px-Male_Burmilla_cat.jpeg','chill','United Kingdom')
,(24,'California Spangled','Short, Spotted','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Spangled_Cat.jpg/100px-Star_Spangled_Cat.jpg','chill','United States')
,(25,'Chantilly-Tiffany',', Solid, ticked, spotted and blotched tabby','https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Tiffany3.jpg/100px-Tiffany3.jpg','chill','United States')
,(26,'Chartreux','Short, Solid blue','https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Abbaye_fev2006_003.jpg/100px-Abbaye_fev2006_003.jpg','chill','France')
,(27,'Chausie','Short, Ticked','https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Chausiecatexample.jpg/100px-Chausiecatexample.jpg','chill','France')
,(28,'Cheetoh','Short, Spotted','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Cheetoh_cat_chilling.png/100px-Cheetoh_cat_chilling.png','cuddley','United States')
,(29,'Cornish Rex','Rex, All','https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/BebopsLilacPrince.JPG/100px-BebopsLilacPrince.JPG','cuddley','United Kingdom (England)')
,(30,'Cyprus','All, All but colorpoint and mink','https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/CyprusShorthair.jpg/100px-CyprusShorthair.jpg','cuddley','Cyprus')
;
INSERT INTO cat_schema.breed_table (id, name, description, image_url, temperament, origin) VALUES 
(31,'Devon Rex','Rex, All','https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Devon_Rex_Izzy.jpg/100px-Devon_Rex_Izzy.jpg','cuddley','United Kingdom (England)')
,(32,'Dwelf','Hairless, ','https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Munchkin_cat.jpg/100px-Munchkin_cat.jpg','cuddley','United Kingdom (England)')
,(33,'Egyptian Mau','Short, Spotted','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Egy_mau.jpg/100px-Egy_mau.jpg','cuddley','Egypt')
,(34,'European Shorthair','Short, All but chocolate, lilac, cinnamon, fawn, amber, ticked, or colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/European_shorthair_procumbent_Quincy.jpg/100px-European_shorthair_procumbent_Quincy.jpg','cuddley','Finland and Sweden')
,(35,'Exotic Shorthair','Short, All','https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Cream_tabby_exotic_cat.jpg/100px-Cream_tabby_exotic_cat.jpg','cuddley','United States')
,(36,'Donskoy or Don Sphynx','Hairless, ','https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Cat_don_sphinx.JPG/100px-Cat_don_sphinx.JPG','cuddley','Russia')
,(37,'Kurilian Bobtail or Kuril Islands Bobtail','Short/long, All but colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Kurilian_bobtail.JPG/100px-Kurilian_bobtail.JPG','cuddley','Eastern Russia and Japan')
,(38,'Ragamuffin or Liebling','Long, All','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/20050922AmarilloRes.jpg/100px-20050922AmarilloRes.jpg','cuddley','United States')
,(39,'Oriental Shorthair','Short, All but colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Oriental_Shorthair_Blue_Eyed_White_cat_%28juvenile%29.jpg/100px-Oriental_Shorthair_Blue_Eyed_White_cat_%28juvenile%29.jpg','cuddley','Developed in the United States and later the United Kingdom; foundation stock ultimately from Thailand')
,(40,'Foldex[5]','Short, All','https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Cachorro_de_Gato_FoldEx_%28%22Belisario_del_Laberinto%22%29.JPG/100px-Cachorro_de_Gato_FoldEx_%28%22Belisario_del_Laberinto%22%29.JPG','cat-like','Canada')
;
INSERT INTO cat_schema.breed_table (id, name, description, image_url, temperament, origin) VALUES 
(41,'German Rex','Rex, All','https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/German_Rex_Emi.jpg/100px-German_Rex_Emi.jpg','cat-like','East Germany')
,(42,'Havana Brown','Short, Solid brown','https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Havana_Brown.jpg/100px-Havana_Brown.jpg','cat-like','United Kingdom')
,(43,'Highlander','Short/long, All','https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Highlander-7.jpg/100px-Highlander-7.jpg','cat-like','United States')
,(44,'Japanese Bobtail','Short/long, All but colorpoint and ticked','https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/JapaneseBobtailBlueEyedMi-ke.JPG/100px-JapaneseBobtailBlueEyedMi-ke.JPG','cuddley','Japan')
,(45,'Karelian Bobtail','Short, cat-like ','https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/JapaneseBobtailBlueEyedMi-ke.JPG/100px-JapaneseBobtailBlueEyedMi-ke.JPG','cuddley','Western Russia')
,(46,'Khao Manee','Short, Solid white','https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Khao_Manee_%22ChaWee%22.jpg/100px-Khao_Manee_%22ChaWee%22.jpg','cuddley','Thailand')
,(47,'Korat','Short, Solid blue','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Veda%2Cchat-adulte-m%C3%A2le-race-korat.JPG/100px-Veda%2Cchat-adulte-m%C3%A2le-race-korat.JPG','cuddley','Thailand')
,(48,'Korean Bobtail','Short/long, Colorprint','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Japanese_Bobtail_looking_like_Manx.jpg/100px-Japanese_Bobtail_looking_like_Manx.jpg','chill','Korea')
,(49,'Korn Ja','Short/hairless, Solid','https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/JapaneseBobtailBlueEyedMi-ke.JPG/100px-JapaneseBobtailBlueEyedMi-ke.JPG','chill','Thailand')
,(50,'LaPerm','Rex, All','https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Laperm_LH_red_tabby.jpg/100px-Laperm_LH_red_tabby.jpg','chill','United States')
;
INSERT INTO cat_schema.breed_table (id, name, description, image_url, temperament, origin) VALUES 
(51,'Lykoi','Partly hairless, Ticked','https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/8-month-old_male_Lykoi.jpg/100px-8-month-old_male_Lykoi.jpg','chill','United States')
,(52,'Maine Coon','Long, All but colorpoint and ticked','https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Maine_Coon_female.jpg/100px-Maine_Coon_female.jpg','cuddley','United States')
,(53,'Mekong Bobtail','Short, Colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Mekong_bobtail_female%2C_Cofein_Pride_cattery.jpg/100px-Mekong_bobtail_female%2C_Cofein_Pride_cattery.jpg','cuddley','Russia')
,(54,'Minskin','Short/hairless, All','https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Minskin_Kitten_Female_blue_tabby_color-pattern.jpg/100px-Minskin_Kitten_Female_blue_tabby_color-pattern.jpg','cuddley','United States')
,(55,'Munchkin','Short/long, All','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Longhairedmunchkin.jpg/100px-Longhairedmunchkin.jpg','cuddley','United States')
,(56,'Nebelung','Semi-long, Solid blue','https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Nebelung_Male%2C_Aleksandr_van_Song_de_Chine.JPG/100px-Nebelung_Male%2C_Aleksandr_van_Song_de_Chine.JPG','cat-like','United States')
,(57,'Napoleon','Short/long, Varied','https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Mekong_bobtail_female%2C_Cofein_Pride_cattery.jpg/100px-Mekong_bobtail_female%2C_Cofein_Pride_cattery.jpg','cat-like','United States')
,(58,'Norwegian Forest Cat','Long, Traditional, sepia, or mink','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Norskskogkatt_Evita_3.JPG/100px-Norskskogkatt_Evita_3.JPG','cat-like','Norway')
,(59,'Ocicat','Short, Spotted','https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Ocicat-Charan.jpg/100px-Ocicat-Charan.jpg','meh','United States')
,(60,'Ojos Azules',', All','https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Persialainen.jpg/100px-Persialainen.jpg','meh','United States')
;
INSERT INTO cat_schema.breed_table (id, name, description, image_url, temperament, origin) VALUES 
(61,'Persian(modern)','Long, All','https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Persialainen.jpg/100px-Persialainen.jpg','meh','Developed in the United States and Europe (foundation stock from Greater Iran)')
,(62,'Persian(traditional)','Long, All','https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/SnowyandHazy.jpg/100px-SnowyandHazy.jpg','meh','Greater Iran')
,(63,'Peterbald','Hairless/flocked, velour, brush, or straight coat, All','https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Tamila_the_lilac_tabby_Peterbald_cat.jpg/100px-Tamila_the_lilac_tabby_Peterbald_cat.jpg','cat-like','Russia')
,(64,'Pixie-bob','Short, Spotted','https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Jarnac_Bepacific_feb07.jpg/100px-Jarnac_Bepacific_feb07.jpg','cat-like','United States')
,(65,'Raas','Short, ','https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/SnowyandHazy.jpg/100px-SnowyandHazy.jpg','cat-like','Indonesia')
,(66,'Ragdoll','Long, Colorpoint, mitted, or bicolor','https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Ragdoll_from_Gatil_Ragbelas.jpg/100px-Ragdoll_from_Gatil_Ragbelas.jpg','cat-like','United States')
,(67,'Russian Blue','Short, Solid blue','https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Russian_Blue_001.gif/100px-Russian_Blue_001.gif','cat-like','Russia')
,(68,'Russian White, Blackand Tabby','Short, Solid white, solid black and tabby','https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Kurilian_bobtail.JPG/100px-Kurilian_bobtail.JPG','cat-like','Developed in Australia (foundation stock from Russia)')
,(69,'Sam Sawet','Short, Solid','https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Kurilian_bobtail.JPG/100px-Kurilian_bobtail.JPG','cat-like','Thailand')
,(70,'Savannah','Short, Spotted','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Savannah_Cat_portrait.jpg/100px-Savannah_Cat_portrait.jpg','cat-like','United States')
;
INSERT INTO cat_schema.breed_table (id, name, description, image_url, temperament, origin) VALUES 
(71,'Oriental Longhair or Foreign Longhair, Mandarin, British Angora (obsolete)','Semi-long, All but colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/OLH-GIP_Divan_Cesar.jpg/100px-OLH-GIP_Divan_Cesar.jpg','meh','Developed in the United Kingdom and United States; foundation stock ultimately from Thailand')
,(72,'Manx','Short/long, All but colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Japanese_Bobtail_looking_like_Manx.jpg/100px-Japanese_Bobtail_looking_like_Manx.jpg','cuddley','United Kingdom (Isle of Man)')
,(73,'Oregon Rex','Rex, ','https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Jarnac_Bepacific_feb07.jpg/100px-Jarnac_Bepacific_feb07.jpg','meh','United States')
,(74,'Oriental Bicolor',', Bicolor','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Oriental_shorthair_20070130_caroline.jpg/100px-Oriental_shorthair_20070130_caroline.jpg','meh','Developed in the United States and United Kingdom, later in Continental Europe; foundation stock ultimately from Thailand')
,(75,'Javanese or Colorpoint Longhair','Long, Colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Javanese_cat.jpg/100px-Javanese_cat.jpg','cuddley','Developed in the United States and Canada (foundation stock from Southeast Asia)')
,(76,'Scottish Fold','Short/long, All','https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Lilac_Scottish_Fold.jpg/100px-Lilac_Scottish_Fold.jpg','cuddley','United Kingdom (Scotland)')
,(77,'Selkirk Rex','Rex (Short/long), All','https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/PolloSelkirkRex.jpg/100px-PolloSelkirkRex.jpg','cuddley','United States')
,(78,'Serengeti','Short, Spotted','https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Serengetimalecat.jpg/100px-Serengetimalecat.jpg','cuddley','United States')
,(79,'Serrade petit','Short, ','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Serrade_petit.jpg/100px-Serrade_petit.jpg','cuddley','France')
,(80,'Singapura','Short, Ticked','https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/Raffles_singapura_cat.jpg/100px-Raffles_singapura_cat.jpg','cuddley','United States')
;
INSERT INTO cat_schema.breed_table (id, name, description, image_url, temperament, origin) VALUES 
(81,'Snowshoe','Short, Colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Snowshoe_%28cat%29.JPG/100px-Snowshoe_%28cat%29.JPG','cuddley','United States')
,(82,'Sokoke','Short, Tabby with ticking','https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Sokoke_dalili.jpg/100px-Sokoke_dalili.jpg','cuddley','Kenya')
,(83,'Somali','Long, Ticked','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Blue_Somali_kitten_age_3_months.jpg/100px-Blue_Somali_kitten_age_3_months.jpg','chill','Somalia')
,(84,'Sphynx','Hairless, All','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Sphinx2_July_2006.jpg/100px-Sphinx2_July_2006.jpg','chill','Canada')
,(85,'Suphalak','Short, Solid','https://upload.wikimedia.org/wikipedia/commons/thumb/5/52/Suphalak_Female_in_Thailand_named_AumDaengManee.jpg/100px-Suphalak_Female_in_Thailand_named_AumDaengManee.jpg','chill','Thailand')
,(86,'Thai Lilac','Short, Solid lilac','https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Thai_Lilac.jpg/100px-Thai_Lilac.jpg','cuddley','Thailand')
,(87,'Tonkinese','Short, Colorpoint, mink, or solid','https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Tonkinese.gif/100px-Tonkinese.gif','cuddley','Canada')
,(88,'Toyger','Short, Striped','https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Toyger_-_Cornish_Rex_presentation_show_Riihim%C3%A4ki_2008-11-16_IMG_0101.JPG/100px-Toyger_-_Cornish_Rex_presentation_show_Riihim%C3%A4ki_2008-11-16_IMG_0101.JPG','cuddley','United States')
,(89,'Turkish Angora','Semi-long, All but colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Turkse_angora.jpg/100px-Turkse_angora.jpg','meh','Turkey')
,(90,'Turkish Van','Semi-long, Van pattern','https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Turkish_Van_Example2.jpg/100px-Turkish_Van_Example2.jpg','meh','Developed in the United Kingdom (foundation stock from Turkey)')
;
INSERT INTO cat_schema.breed_table (id, name, description, image_url, temperament, origin) VALUES 
(91,'Ukrainian Levkoy','Hairless, ','https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/Ukrainian_Levkoy_cat.jpg/100px-Ukrainian_Levkoy_cat.jpg','meh','Ukraine')
,(92,'Wila Krungthep','Short, Solid','https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Turkish_Van_Example2.jpg/100px-Turkish_Van_Example2.jpg','meh','Thailand')
,(93,'York Chocolate','Long, Solid brown','https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/York_Chocolate.jpg/100px-York_Chocolate.jpg','meh','United States (New York)')
,(94,'Colorpoint Shorthair','Short, Colorpoint','https://upload.wikimedia.org/wikipedia/en/thumb/d/d5/Jake117.jpg/100px-Jake117.jpg','meh','United States (New York)')
,(95,'Cymric or Manx Longhair','Long, All but colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Cymric_-_Norwegian_forest_cat_presentation_show_Kotka_2009-02-01_IMG_0687.JPG/100px-Cymric_-_Norwegian_forest_cat_presentation_show_Kotka_2009-02-01_IMG_0687.JPG','meh','United Kingdom (Isle of Man), and Canada')
,(96,'Himalayan or Colorpoint Persian','Long, Colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Chocolate_Himlayan.jpg/100px-Chocolate_Himlayan.jpg','meh','United States and United Kingdom')
,(97,'Siamese (modern)','Short, Colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Siam_lilacpoint.jpg/100px-Siam_lilacpoint.jpg','meh','Developed in the United States and Europe (foundation stock from Thailand)')
,(98,'Siberian or Siberian Forest Cat','Semi-long, All','https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Siberiancat.jpg/100px-Siberiancat.jpg','meh','Russia')
,(99,'Thai or Traditional, Classic, or Old-style Siamese','Short, Colorpoint','https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Mimbi3.JPG/100px-Mimbi3.JPG','meh','Thailand')
;

INSERT INTO cat_schema.favorite_table (breedid) VALUES
(2),
(44),
(62);
