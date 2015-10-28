use sql_tutorials;
DROP TABLE IF EXISTS people_pets;
DROP TABLE IF EXISTS prescription;
DROP TABLE IF EXISTS medication;
DROP TABLE IF EXISTS pets;
DROP TABLE IF EXISTS people;
DROP VIEW IF EXISTS PetsWithMoreThanOneOwner;

CREATE TABLE `people` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `phone` varchar(100) default NULL,
  `address` varchar(255) default NULL,
  `favourite_number` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO people (`name`, `email`, `phone`, `address`, `favourite_number`) VALUES ("max", "risus.Nulla.eget@tincidunttempusrisus.co.uk", "0868 212 3666", "Ap #120-3795 Quis Rd.", 50),("emily", "Nulla@nec.org", "0936 463 5845", "P.O. Box 243, 6798 Adipiscing Street", 68),("Alisa", "vel.mauris@ametluctus.com", "076 7859 1077", "P.O. Box 507, 1411 Scelerisque St.", 63),("Abbot", "dolor.Fusce@turpisegestasAliquam.edu", "0800 067704", "832-5601 Eros. St.", 14),("Miranda", "aliquam.iaculis@lacusvarius.net", "(021) 7518 7891", "7281 Elit, Rd.", 46),("Anne", "dictum.sapien.Aenean@Phasellusfermentum.ca", "0500 331178", "5495 Lorem, Street", 57),("Karina", "Donec@ligula.org", "0845 46 48", "6303 Non Rd.", 64),("Ahmed", "tempor.erat@gravida.ca", "07068 818541", "6458 Rutrum. St.", 53),("Cassidy", "auctor@etmagnaPraesent.ca", "(01336) 058400", "P.O. Box 254, 9903 Arcu St.", 97),("Patricia", "Sed.dictum@Inat.com", "0991 347 9266", "223-2907 Lacus. Street", 2);
INSERT INTO people (`name`, `email`, `phone`, `address`, `favourite_number`) VALUES ("Kirestin", "aliquet.Phasellus@lectus.ca", "0319 079 7237", "428-2551 Et Street", 52),("Omar", "mollis@aliquetmetusurna.edu", "0800 1111", "Ap #581-2009 Velit. Ave", 67),("Nevada", "consectetuer.rhoncus@primisinfaucibus.co.uk", "(021) 4621 8638", "9452 Donec Ave", 3),("Sydney", "hendrerit.id@etpede.edu", "07078 806104", "1692 Tellus Rd.", 19),("Mona", "nibh.enim.gravida@felis.co.uk", "07624 139014", "890-180 Vitae St.", 69),("Christian", "ante.lectus@mauris.ca", "0800 916819", "5541 Ut, Ave", 52),("Lana", "fringilla@vulputateposuerevulputate.ca", "0800 1111", "387-7760 Integer Road", 57),("Upton", "ipsum@nibhPhasellusnulla.edu", "(01558) 517683", "3895 Montes, Road", 99),("Adam", "nibh.lacinia.orci@neque.com", "0886 984 0826", "Ap #766-8841 Non Ave", 70),("Xerxes", "in.faucibus.orci@Aliquam.co.uk", "(01785) 48253", "P.O. Box 740, 177 Ornare Rd.", 63);
INSERT INTO people (`name`, `email`, `phone`, `address`, `favourite_number`) VALUES ("Violet", "non.dui@elit.com", "07285 915331", "562-3163 Tellus, St.", 79),("Oren", "gravida.mauris.ut@afeugiattellus.com", "0800 237154", "Ap #358-9083 Vulputate, Street", 13),("Aaron", "auctor.quis@Phasellusdolor.edu", "(025) 8994 9868", "2362 Orci, Rd.", 39),("Phelan", "nascetur@Nam.ca", "(016977) 0137", "3522 Magna. Rd.", 32),("Dara", "ante.ipsum.primis@pellentesquea.com", "0800 1111", "P.O. Box 980, 4259 Sem Street", 98),("Joan", "non.sollicitudin@Donecfeugiat.org", "(0117) 864 5708", "821 Placerat. Rd.", 23),("Blair", "nibh@sedconsequatauctor.net", "(017918) 17069", "326-4393 Gravida St.", 42),("Cairo", "diam@Integer.edu", "(016977) 2319", "816-9284 Phasellus Rd.", 22),("Angela", "Mauris@CraspellentesqueSed.org", "0500 309722", "3499 Rutrum Ave", 34),("Emery", "montes.nascetur@Suspendissesagittis.net", "0845 46 42", "Ap #531-8186 Sem Avenue", 89);
INSERT INTO people (`name`, `email`, `phone`, `address`, `favourite_number`) VALUES ("Belle", "leo.Morbi.neque@Phasellus.net", "(016977) 5900", "P.O. Box 648, 1484 Parturient Road", 97),("Yael", "nisi@imperdietnon.net", "076 8294 2231", "7557 Litora St.", 22),("Breanna", "id.risus.quis@orci.org", "0800 567 3110", "Ap #583-1058 Tincidunt Rd.", 15),("Elton", "Nunc@utmi.edu", "070 5100 6838", "Ap #184-9015 Vulputate, Av.", 5),("Jack", "dolor.dapibus.gravida@idenimCurabitur.com", "0838 974 6964", "2301 Porttitor Rd.", 44),("Vivian", "amet@tellus.com", "0800 1111", "P.O. Box 612, 6049 Est. Av.", 48),("Olga", "Nullam.feugiat.placerat@turpisegestasAliquam.ca", "(0110) 152 2364", "Ap #179-1846 Sed Rd.", 61),("Keaton", "tortor@nullamagna.net", "(01786) 543168", "P.O. Box 754, 7955 Urna. Avenue", 24),("Tanek", "orci@pretiumet.co.uk", "0800 358 1618", "785-906 A, St.", 44),("Kuame", "lorem@amet.com", "(0101) 787 5609", "Ap #610-7709 Praesent Rd.", 86);
INSERT INTO people (`name`, `email`, `phone`, `address`, `favourite_number`) VALUES ("Destiny", "nulla.Integer@semelitpharetra.com", "0919 288 8321", "535-7361 Nisl Rd.", 85),("Ruby", "libero@euismodest.edu", "(01205) 89638", "7774 Ullamcorper Street", 79),("Briar", "Donec.vitae@nonarcu.org", "0845 46 42", "Ap #375-1368 Ridiculus Street", 87),("Amanda", "ut@Sedmolestie.org", "0800 1111", "891 Vestibulum Av.", 40),("Stewart", "dui.augue.eu@parturient.org", "076 7307 9866", "4052 Magna. St.", 89),("Quail", "et.ultrices@ridiculus.com", "0845 46 44", "P.O. Box 688, 2877 Urna Ave", 95),("Holmes", "semper.Nam@dictum.ca", "(013823) 05373", "7619 Ipsum. Rd.", 10),("Nigel", "lacus.pede@luctus.edu", "055 3914 3957", "Ap #586-7673 Egestas Avenue", 13),("Rowan", "nibh.enim@eratvolutpat.co.uk", "0873 642 5497", "Ap #923-4717 Sollicitudin Street", 11),("Yardley", "lacus@et.edu", "07624 568262", "5513 Fringilla, Rd.", 24);
INSERT INTO people (`name`, `email`, `phone`, `address`, `favourite_number`) VALUES ("Plato", "Quisque@egetmollislectus.com", "0800 481438", "P.O. Box 589, 8365 Urna. Av.", 79),("Alfonso", "ut.pharetra@velitPellentesque.net", "(024) 6379 3997", "Ap #453-6497 Hendrerit Rd.", 55),("Isadora", "Aliquam.vulputate.ullamcorper@nunc.edu", "070 3712 4509", "P.O. Box 771, 6169 Libero St.", 35),("Leila", "et.pede.Nunc@sagittislobortismauris.ca", "(01884) 54534", "7088 Magna. Street", 85),("Aurora", "cursus.vestibulum.Mauris@vitae.com", "076 4757 3348", "2164 Fames Road", 94),("Lunea", "nec.ante@consectetuercursus.com", "0800 933169", "P.O. Box 341, 7829 Bibendum Rd.", 41),("Cedric", "eu.dolor.egestas@egetvolutpatornare.edu", "070 4629 9996", "P.O. Box 812, 7624 Enim St.", 46),("Ima", "lectus.sit.amet@Seddiam.net", "(0101) 268 8780", "P.O. Box 877, 5326 Amet, Rd.", 89),("Daquan", "feugiat@vestibulum.com", "0337 323 9331", "P.O. Box 365, 228 Odio Rd.", 54),("Ramona", "sem@egestasnunc.ca", "07122 158986", "987-6344 Suspendisse Av.", 47);
INSERT INTO people (`name`, `email`, `phone`, `address`, `favourite_number`) VALUES ("Burton", "ipsum@Duis.edu", "0862 622 5910", "P.O. Box 589, 7388 Dui. Road", 54),("Honorato", "lectus@Fusce.net", "(0181) 215 1574", "P.O. Box 796, 6877 Iaculis Av.", 68),("Elvis", "metus.Aenean.sed@Aliquam.co.uk", "070 8697 0651", "P.O. Box 463, 7201 Metus. St.", 82),("Conan", "orci.Donec.nibh@tellusPhasellus.net", "0800 293065", "3052 Scelerisque St.", 88),("Sacha", "blandit.congue.In@dictumeleifend.org", "(0119) 123 7055", "P.O. Box 162, 1923 Arcu. Ave", 85),("Benjamin", "eros@Aliquamauctor.net", "0800 297598", "P.O. Box 873, 3133 Velit. Rd.", 17),("Naida", "Lorem.ipsum@Nuncsedorci.com", "076 9560 3281", "P.O. Box 744, 6904 Dictum. St.", 23),("Conan", "Donec.est@odioEtiamligula.org", "(01622) 34303", "P.O. Box 478, 9966 Augue Avenue", 15),("Zelenia", "sagittis@diamat.edu", "0800 028 0575", "421-834 Mollis Street", 26),("Carter", "pharetra.Nam.ac@velitPellentesqueultricies.ca", "055 4734 0695", "P.O. Box 575, 2391 Ridiculus Street", 75);
INSERT INTO people (`name`, `email`, `phone`, `address`, `favourite_number`) VALUES ("Leslie", "leo.in.lobortis@nuncQuisqueornare.co.uk", "0845 46 43", "P.O. Box 892, 6595 Convallis Road", 98),("McKenzie", "Cum.sociis@non.org", "07624 001967", "Ap #901-5380 Mauris St.", 42),("Bell", "In.mi@sitametluctus.edu", "0800 1111", "3018 Metus Ave", 11),("Inez", "dictum@tellusjusto.com", "(01939) 971514", "9837 Est, Rd.", 15),("Yuri", "lobortis@aclibero.com", "0938 437 6780", "P.O. Box 128, 545 Cursus. St.", 95),("Kieran", "lectus.ante.dictum@nonummyultricies.net", "(016977) 1081", "410-7242 Nec Road", 24),("Blaze", "Nam.nulla@lacus.co.uk", "(021) 9404 0860", "Ap #158-2341 Eget Street", 27),("Neve", "quam@Quisqueporttitor.net", "0835 864 4883", "P.O. Box 184, 6791 Id Street", 20),("Jeremy", "nec.quam@facilisis.com", "07624 692112", "5909 Mauris Street", 42),("Skyler", "neque@Nuncut.net", "(016977) 1537", "Ap #192-4595 Sit St.", 77);
INSERT INTO people (`name`, `email`, `phone`, `address`, `favourite_number`) VALUES ("Paki", "lorem.ipsum.sodales@liberoest.ca", "(01824) 53422", "9246 Luctus Road", 96),("Samantha", "Suspendisse.sagittis.Nullam@risusDonec.edu", "0800 1111", "117-1989 Vulputate, Rd.", 38),("Sydnee", "ut.aliquam.iaculis@ligulaNullam.edu", "(014429) 31969", "Ap #242-4989 Nulla St.", 62),("Shelley", "semper@convallis.com", "(016977) 6041", "115-3251 In Street", 78),("Tanner", "libero.et@variusorci.com", "(01918) 38736", "Ap #336-4428 Amet Av.", 71),("Petra", "turpis.Nulla@taciti.com", "0800 1111", "306-1813 Eget, Av.", 70),("Blossom", "sit.amet@parturient.net", "0800 787 1938", "P.O. Box 122, 589 Montes, Street", 28),("Tate", "risus.a.ultricies@facilisisnon.org", "0845 46 42", "P.O. Box 835, 3615 Nunc Ave", 38),("Skyler", "molestie.in@Vivamusmolestie.com", "0844 758 1626", "P.O. Box 402, 5965 Feugiat Rd.", 99),("Blake", "primis.in.faucibus@MaurismagnaDuis.net", "070 9009 6645", "3169 Mauris Rd.", 23);
INSERT INTO people (`name`, `email`, `phone`, `address`, `favourite_number`) VALUES ("Rylee", "Sed@Duisvolutpatnunc.edu", "070 5811 1827", "170-3930 Curabitur Av.", 91),("Tiger", "quam.Pellentesque@Donecfeugiat.com", "070 1862 3886", "209-5346 Ornare, St.", 31),("Lillian", "litora.torquent.per@musProinvel.ca", "0900 693 8206", "4806 Sem, St.", 27),("Heather", "Aliquam@aclibero.co.uk", "0800 046132", "7996 Enim. Street", 55),("Ralph", "diam.Pellentesque.habitant@necmalesuada.edu", "(01504) 37346", "5341 Praesent St.", 54),("Howard", "et.arcu.imperdiet@Aliquamnecenim.net", "(0113) 019 3860", "782-2221 Duis Rd.", 97),("Yasir","elit.Nulla@idblandit.net","0804 891 2420","Ap #144-3189 Donec Avenue",46),("Alfonso","nulla.vulputate@semut.co.uk","(016977) 4357","7167 Lacinia Street",77),("Blair","lacus.Quisque.purus@eu.co.uk","(026) 4885 5403","Ap #445-8456 Ac Rd.",43),("Cleo","nascetur.ridiculus.mus@luctus.co.uk","0800 238391","P.O. Box 511, 1625 Lobortis St.",78);



DROP TABLE IF EXISTS `pets`;

CREATE TABLE `pets` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `animal` varchar(255) default NULL,
  `age` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `pets` (`name`,`animal`,`age`) VALUES ("Poppy","dog",22),("Quentin","plank",20),("Rowan","dog",15),("Irene","cat",6),("Aristotle","chinchilla",6),("Idola","plank",20),("Vance","chinchilla",7),("Xantha","fish",6),("Orson","chinchilla",19),("Grant","chinchilla",17);
INSERT INTO `pets` (`name`,`animal`,`age`) VALUES ("Victoria","parrot",4),("Christian","plank",8),("Heidi","parrot",4),("Hannah","dog",17),("Ivory","cat",14),("Kalia","dog",25),("Brennan","chinchilla",4),("Emerson","chinchilla",9),("Gage","chinchilla",11),("Roanna","dog",14);
INSERT INTO `pets` (`name`,`animal`,`age`) VALUES ("Fredericka","chinchilla",19),("Charissa","parrot",4),("Derek","dog",22),("Guinevere","cat",12),("Kane","fish",8),("Anthony","plank",22),("Colton","fish",24),("Kiayada","chinchilla",7),("Melissa","fish",10),("Omar","cat",2);
INSERT INTO `pets` (`name`,`animal`,`age`) VALUES ("Chester","chinchilla",15),("Jeanette","dog",9),("Britanni","parrot",10),("Vielka","plank",23),("Susan","parrot",14),("Idona","cat",23),("Yasir","fish",1),("Aretha","plank",26),("Olga","cat",19),("Cairo","chinchilla",18);
INSERT INTO `pets` (`name`,`animal`,`age`) VALUES ("Shelby","chinchilla",25),("Deirdre","parrot",22),("Cooper","dog",2),("Ori","cat",7),("Wanda","dog",5),("Kyle","plank",1),("Logan","fish",5),("Rhonda","dog",23),("Slade","cat",22),("Liberty","chinchilla",9);
INSERT INTO `pets` (`name`,`animal`,`age`) VALUES ("Alfreda","fish",26),("Clayton","parrot",5),("Finn","dog",9),("Kameko","chinchilla",25),("Wyatt","plank",11),("Carissa","plank",10),("Hilel","dog",2),("Chaim","fish",21),("Guinevere","chinchilla",3),("Xander","dog",26);
INSERT INTO `pets` (`name`,`animal`,`age`) VALUES ("Sara","cat",15),("Abel","plank",10),("Rina","chinchilla",26),("Preston","cat",13),("Guy","dog",4),("Britanni","plank",2),("Eaton","cat",15),("Cade","cat",18),("Summer","cat",17),("Linda","dog",15);
INSERT INTO `pets` (`name`,`animal`,`age`) VALUES ("Hollee","chinchilla",5),("Wesley","plank",7),("Dieter","dog",16),("Basia","chinchilla",9),("Erich","chinchilla",13),("Brady","dog",10),("Branden","cat",12),("Tamara","fish",15),("Phillip","dog",4),("Bertha","fish",15);
INSERT INTO `pets` (`name`,`animal`,`age`) VALUES ("Ingrid","parrot",13),("Nolan","plank",19),("Alana","cat",21),("Hop","plank",6),("Damian","chinchilla",5),("Chadwick","chinchilla",24),("Hermione","plank",1),("Myra","chinchilla",26),("Alexandra","cat",12),("Sacha","dog",6);
INSERT INTO `pets` (`name`,`animal`,`age`) VALUES ("Tamekah","parrot",7),("Jaquelyn","parrot",7),("Sybill","plank",12),("Imogene","plank",8),("Callum","chinchilla",20),("Yardley","fish",1),("Melvin","dog",4),("Aristotle","dog",22),("Troy","plank",11),("Riley","parrot",24);



DROP TABLE IF EXISTS people_pets;

CREATE TABLE people_pets (
#   id MEDIUMINT(8) NOT NULL AUTO_INCREMENT,
  owner_id MEDIUMINT(8) unsigned NOT NULL,
  pet_id MEDIUMINT(8) unsigned NOT NULL,
#   PRIMARY KEY (id),
  FOREIGN KEY (owner_id) REFERENCES people(id),
  FOREIGN KEY (pet_id) REFERENCES pets(id)
);

INSERT INTO people_pets (owner_id, pet_id) VALUES
  (1,1),(2,1),(2,3),
  (2,4),(2,5),(99,99),
  (4,6);


DROP TABLE IF EXISTS `medication`;

CREATE TABLE `medication` (
  `name` varchar(255) NOT NULL,
  `advised_dose` mediumint default NULL,
  PRIMARY KEY (`name`)
);

INSERT INTO `medication` (`name`,`advised_dose`) VALUES ("Meloxicam",6),("Penicillin VK",10),("Lyrica",4),("Benicar",8),("Glyburide",4),("Sulfamethoxazole/Trimethoprim",1),("Abilify",5),("Triamcinolone Acetonide",3),("Fluticasone Propionate",9);
INSERT INTO `medication` (`name`,`advised_dose`) VALUES ("Celebrex",9),("Lovaza",7),("LevothyroxineSodium",9),("Famotidine",2),("Carvedilol",6),("Warfarin Sodium",4),("Diazepam",6),("Furosemide",3),("Gabapentin",4),("Nuvaring",8);
INSERT INTO `medication` (`name`,`advised_dose`) VALUES ("Allopurinol",3),("Plavix",4),("Proair HFA",6),("Endocet",8),("Simvastatin",9),("Lisinopril",5),("Metformin HCl",9),("Trazodone HCl",1),("Triamterene/Hydrochlorothiazide",10),("Alprazolam",9);
INSERT INTO `medication` (`name`,`advised_dose`) VALUES ("Oxycontin",10),("Digoxin",6),("Glipizide",4),("Lipitor",8),("Flovent HFA",10),("Amlodipine Besylate",8);
INSERT INTO `medication` (`name`,`advised_dose`) VALUES ("Zolpidem Tartrate",3),("Hydrochlorothiazide",3),("Actos",9),("Spiriva Handihaler",2),("Cheratussin AC",8);
INSERT INTO `medication` (`name`,`advised_dose`) VALUES ("Amphetamine Salts",1),("Prednisone",1),("Vytorin",2),("Omeprazole (Rx)",3);
INSERT INTO `medication` (`name`,`advised_dose`) VALUES ("Sertraline HCl",6),("Levaquin",7),("Atenolol",4),("Tri-Sprintec",3),("Pravastatin Sodium",4);
INSERT INTO `medication` (`name`,`advised_dose`) VALUES ("Clonazepam",2),("Promethazine HCl",9),("Cyclobenzaprin HCl",1),("Benicar HCT",1),("Hydrocodone/APAP",5);
INSERT INTO `medication` (`name`,`advised_dose`) VALUES ("Amoxicillin",7),("Potassium Chloride",1),("Lexapro",5),("Alendronate Sodium",1),("Ibuprofen (Rx)",1);
INSERT INTO `medication` (`name`,`advised_dose`) VALUES ("Viagra",9),("Venlafaxine HCl ER",9),("Januvia",8),("Nexium",9),("Levoxyl",9),("Clindamycin HCl",6);



DROP TABLE IF EXISTS prescription;

CREATE TABLE prescription (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `medication_name` varchar(255) NOT NULL,
  `daily_dose` mediumint default NULL,
  `patient_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`medication_name`) REFERENCES medication (`name`),
  FOREIGN KEY (`patient_id`) REFERENCES people (`id`)
) AUTO_INCREMENT=1;

INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Meloxicam", 6,4),("Penicillin VK", 10,4),("Lyrica", 4,4),("Lyrica", 1,4),("Benicar", 8,4),("Glyburide", 4,4),("Sulfamethoxazole/Trimethoprim", 1,4),("Abilify", 5,4),("Triamcinolone Acetonide", 3,4),("Fluticasone Propionate", 9,9);
INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Celebrex", 9,4),("Lovaza", 7,4),("LevothyroxineSodium", 9,4),("Famotidine", 2,4),("Carvedilol", 6,4),("Warfarin Sodium", 4,4),("Diazepam", 6,4),("Furosemide", 3,4),("Gabapentin", 4,7),("Nuvaring", 8,15);
INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Allopurinol", 3,7),("Plavix", 4,7),("Proair HFA", 6,7),("Endocet", 8,7),("Simvastatin", 9,7),("Lisinopril", 5,7),("Metformin HCl", 9,7),("Trazodone HCl", 1,7),("Triamterene/Hydrochlorothiazide", 10,7),("Alprazolam", 9,15);
INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Oxycontin", 10,7),("Digoxin", 6,7),("Glipizide", 4,7),("Lovaza", 7,13),("Lipitor", 8,13),("Simvastatin", 3,13),("Levaquin", 5,13),("LevothyroxineSodium", 2,13),("Flovent HFA", 10,13),("Amlodipine Besylate", 8,88);
INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Zolpidem Tartrate", 3,13),("Hydrochlorothiazide", 3,13),("Lisinopril", 1,23),("Sulfamethoxazole/Trimethoprim", 5,23),("Actos", 9,23),("Spiriva Handihaler", 2,23),("Plavix", 7,23),("Cheratussin AC", 8,23),("Lisinopril", 6,23),("Alendronate Sodium", 9,8);
INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Amphetamine Salts", 1,23),("Metformin HCl", 8,23),("Prednisone", 1,23),("Vytorin", 2,23),("Gabapentin", 5,23),("Benicar", 5,23),("Omeprazole (Rx)", 3,23),("Amoxicillin", 4,23),("Prednisone", 2,33),("Sertraline HCl", 6,6);
INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Lovaza", 6,33),("Sertraline HCl", 6,33),("Levaquin", 7,33),("Atenolol", 4,33),("Hydrochlorothiazide", 3,33),("Tri-Sprintec", 3,33),("Sertraline HCl", 6,63),("Prednisone", 10,63),("Pravastatin Sodium", 4,63),("Metformin HCl", 6,7);
INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Lisinopril", 5,73),("Clonazepam", 2,73),("Penicillin VK", 8,73),("Promethazine HCl", 9,83),("Cyclobenzaprin HCl", 1,83),("Benicar HCT", 1,83),("Lisinopril", 9,81),("Penicillin VK", 7,81),("Amlodipine Besylate", 8,81),("Hydrocodone/APAP", 5,17);
INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Amoxicillin", 7,81),("Lyrica", 8,91),("Potassium Chloride", 1,91),("Sertraline HCl", 8,91),("Lexapro", 5,11),("Alendronate Sodium", 1,11),("Simvastatin", 2,11),("Ibuprofen (Rx)", 1,11),("Sertraline HCl", 7,1),("Prednisone", 6,23);
INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Viagra", 9,21),("Venlafaxine HCl ER", 9,21),("Januvia", 8,21),("LevothyroxineSodium", 10,21),("Nexium", 9,21),("Allopurinol", 5,21),("Simvastatin", 4,21),("Clonazepam", 1,21),("Levoxyl", 9,31),("Clindamycin HCl", 6,33);
INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Lisinopril", 5,31),("Clonazepam", 2,31),("Penicillin VK", 8,31),("Promethazine HCl", 9,31),("Cyclobenzaprin HCl", 1,31),("Benicar HCT", 1,31),("Lisinopril", 9,31),("Penicillin VK", 7,31),("Amlodipine Besylate", 8,41),("Hydrocodone/APAP", 5,97);
INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Amoxicillin", 7,41),("Lyrica", 8,41),("Potassium Chloride", 1,41),("Sertraline HCl", 8,41),("Lexapro", 5,41),("Alendronate Sodium", 1,41),("Simvastatin", 2,41),("Ibuprofen (Rx)", 1,51),("Sertraline HCl", 7,51),("Prednisone", 6,98);
INSERT INTO prescription (medication_name, `daily_dose`, `patient_id`) VALUES ("Viagra", 9,51),("Venlafaxine HCl ER", 9,51),("Januvia", 8,51),("LevothyroxineSodium", 10,51),("Nexium", 9,51),("Allopurinol", 5,51),("Simvastatin", 4,51),("Clonazepam", 1,61),("Levoxyl", 9,62),("Clindamycin HCl", 6,3);




#Views

#Pets with more than 1 owner
CREATE OR REPLACE VIEW PetsWithMoreThanOneOwner AS
  SELECT people.name as Owner, pets.animal as pet, pets.name as "Pet's name"
  FROM people
    INNER JOIN people_pets
      ON people.id = people_pets.owner_id AND (
                                                SELECT COUNT(*) FROM people_pets p WHERE p.pet_id=people_pets.pet_id
                                              ) > 1
    #        AND group_elements.GroupID = 3
    INNER JOIN pets
      ON people_pets.pet_id = pets.id
