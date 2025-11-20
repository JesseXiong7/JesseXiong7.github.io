--
-- File generated with SQLiteStudio v3.4.4 on Mon Feb 24 17:36:12 2025
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: company
DROP TABLE IF EXISTS company;

CREATE TABLE IF NOT EXISTS company (
    companyID  INTEGER      NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    name       VARCHAR (50) NOT NULL,
    addr1      VARCHAR (30) NOT NULL,
    addr2      VARCHAR (30),
    city       VARCHAR (30) NOT NULL,
    state      VARCHAR (2)  NOT NULL,
    postalCode VARCHAR (15) NOT NULL,
    country    VARCHAR (15) NOT NULL,
    phone      VARCHAR (20) DEFAULT NULL,
    fax        VARCHAR (20) DEFAULT NULL,
    website    VARCHAR (50) 
);

INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (1, 'Nunc Interdum Industries', 'P.O. Box 573, 6734 Pellentesque, Road', NULL, 'PROVO', 'UT', '65383', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (2, 'Lectus Nullam Consulting', '9890 Nibh. Road', NULL, 'ANCHORAGE', 'AK', '81658', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (3, 'Iaculis Enim Sit Llc', 'Ap #361-2823 Ac, Road', NULL, 'HONOLULU', 'HI', '66144', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (4, 'In Faucibus Orci Pc', '7389 Auctor Road', NULL, 'LAFAYETTE', 'LA', '85075', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (5, 'Quis Massa Mauris Institute', '6953 Blandit. Street', NULL, 'IQALUIT', 'NU', '71M 3X4', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (6, 'Nec Consulting', '3936 Sit Road', NULL, 'BURIN', 'NL', 'O8T 5H1', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (7, 'Diam Pellentesque Habitant Industries', '430-3279 Ornare Avenue', NULL, 'INDIANAPOLIS', 'IN', '76756', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (8, 'Nunc Nulla Foundation', 'Ap #372-8571 Massa. Avenue', NULL, 'WATERBURY', 'CT', '99730', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (9, 'Molestie Orci Pc', '154-8362 Laoreet Road', NULL, 'HOLMAN', 'NT', 'B0S 7C2', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (10, 'Nec Tellus Foundation', '184-4703 Scelerisque Street', NULL, 'TOPEKA', 'KS', '35535', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (11, 'Amet Institute', '', NULL, 'PANGNIRTUNG', 'NU', 'P2G 7C2', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (12, 'Nullam Feugiat Ltd', 'P.O. Box 384', NULL, 'KNOXVILLE', 'TN', '64304', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (13, 'Massa Vestibulum Corporation', 'Ap #674-6824 Bibendum Avenue', NULL, 'BOZEMAN', 'MT', '44676', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (14, 'Et Ipsum Cursus Industries', 'Ap #964-1299 Eu, Street', NULL, 'PRINCE ALBERT', 'SK', 'S8L 6G8', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (15, 'Neque Sed Sem Ltd', '819-5402 Maecenas Road', NULL, 'LOURDES', 'MB', '29J 1X4', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (16, 'Cursus Et Llc', '575-5891 Nullam Avenue', NULL, 'GUYSBOROUGH', 'NS', 'N1Y 8E3', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (17, 'Dolor Industries', '322-9711 Ligula Road', NULL, 'FOGO', 'NL', 'T6K 6L1', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (18, 'Ante Company', 'Ap #819-4455 Urna Avenue', NULL, 'VILNA', 'AB', '27R 8J2', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (19, 'Mauris Nulla Llc', '8870 Erat Road', NULL, 'MILLET', 'AB', 'L5C 5P9', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (20, 'Dictum Eu Corporation', '140-2552 A Road', NULL, 'WABAMUN', 'AB', '78S 8Y5', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (21, 'Sociosqu Associates', 'Ap #819-7889 Cras Ave', NULL, 'RIGOLET', 'NL', 'J1S 4W1', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (22, 'Quam Pellentesque Corp.', '766 Proin Street', NULL, 'IOWA CITY', 'IA', '52240', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (23, 'Porttitor Scelerisque Neque Inc.', 'Ap #212-9985 Lacus, Road', NULL, 'LANARK COUNTY', 'ON', '88H 5T8', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (24, 'Et Llc', 'Ap #864-6178 Accumsan Avenue', NULL, 'DALY', 'MB', '43G 6M7', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (25, 'Nulla Corporation', 'Ap #730-6931 Eu Road', NULL, 'CHEYENNE', 'WY', '41393', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (26, 'Risus Quis Diam Inc.', '730-8726 Lacus. Road', NULL, 'PORTLAND', 'OR', '15915', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (27, 'Cursus Inc.', '3294 Faucibus. Avenue', NULL, 'METAIRIE', 'LA', '51567', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (28, 'Risus Nunc Foundation', 'Ap #573-8453 Odio Road', NULL, 'BEAUSEJOUR', 'MB', '23V 6G0', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (29, 'Congue In Inc.', '1372 Fusce Street', NULL, 'SHREVEPORT', 'LA', '67846', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (30, 'Dignissim Tempor Pc', '956-6769 At Road', NULL, 'DIEPPE', 'NB', 'B1T 8N7', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (31, 'Fusce Dolor Industries', 'P.O. Box 297, 5595 Donec Road', NULL, 'CAMBRIDGE BAY', 'NU', 'B4V 0Y6', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (32, 'Vulputate Eu Odio Incorporated', '159-3554 In Road', NULL, 'GARY', 'IN', '27203', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (33, 'Lorem Ipsum Ltd', 'Ap #819-5910 Vehicula Avenue', NULL, 'PIKE CREEK', 'DE', '94745', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (34, 'Congue Turpis In Associates', '3947 Tincidunt, Street', NULL, 'HENDERSON', 'NV', '30564', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (35, 'Tristique Pharetra Consulting', 'P.O. Box 440', NULL, 'CINCINNATI', 'OH', '72111', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (36, 'Magnis Ltd', '297-8635 Placerat Avenue', NULL, 'ROCHESTER', 'MN', '75149', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (37, 'Libero Et Tristique Limited', 'Ap #307-9801 Euismod Road', NULL, 'HALIFAX', 'NS', 'G6J 4P9', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (38, 'Tincidunt Tempus Consulting', 'Ste 233-9631 Mauris Street', NULL, 'FAHLER', 'AB', '34L 1R7', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (39, 'Lacus Etiam Limited', 'P.O. Box 403, 4746 Est Ave', NULL, 'HOUSTON', 'TX', '27322', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (40, 'Eu Neque Pellentesque Ltd', '945-9737 Morbi Avenue', NULL, 'CLEVELAND', 'OH', '87575', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (41, 'Lacus Quisque Llp', '685 Et Avenue', NULL, 'AKRON', 'OH', '67778', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (42, 'Non Vestibulum Associates', '5801 Consequat Avenue', NULL, 'KAKISA', 'NT', '38G 7C8', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (43, 'Nunc Sed Consulting', 'P.O. Box 223, 9007 Luctus Street', NULL, 'BAIE-SAINT-PAUL', 'QC', 'J1Y 1E3', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (44, 'Velit Eu Inc.', 'P.O. Box 667, 6598 Sagittis Avenue', NULL, 'CANORA', 'SK', 'S4X 9V3', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (45, 'Curae Associates', '727-2267 Feugiat Street', NULL, 'KAPOLEI', 'HI', '80536', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (46, 'In Aliquet Lobortis Pc', 'Ap #687-3903 Pretium Road', NULL, 'HONOLULU', 'HI', '35902', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (47, 'Egestas Llc', 'P.O. Box 888, 7552 Diam Avenue', NULL, 'MISSOULA', 'MT', '75573', 'US', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (48, 'Dolor Sit Inc.', '977-2312 Justo Avenue', NULL, 'WATSON LAKE', 'YT', 'Y6Y 2X4', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (49, 'Nec Luctus Felis Industries', '1435 Cras Road', NULL, 'WATSON LAKE', 'YT', 'Y4R 4R3', 'CA', NULL, NULL, NULL);
INSERT INTO company (companyID, name, addr1, addr2, city, state, postalCode, country, phone, fax, website) VALUES (50, 'Tincidunt Dui Augue Llc', '362-4088 Eu, Avenue', NULL, 'FORT COLLINS', 'CO', '33027', 'US', NULL, NULL, NULL);

-- Table: contact
DROP TABLE IF EXISTS contact;

CREATE TABLE IF NOT EXISTS contact (
    contactID     INTEGER      NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    companyID     INT (11)     NOT NULL
                               REFERENCES company (companyID),
    firstName     VARCHAR (40) NOT NULL,
    lastName      VARCHAR (40) NOT NULL,
    title         VARCHAR (50),
    busPhone      VARCHAR (20) DEFAULT NULL,
    busExt        VARCHAR (5)  DEFAULT NULL,
    email         VARCHAR (60),
    personalPhone VARCHAR (20) DEFAULT NULL
);

INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (1, 1, 'Patience', 'Ferguson', NULL, '257-751-1863', NULL, 'fusce@icloud.ca', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (2, 2, 'Uriel', 'Golden', NULL, '792-693-5271', NULL, 'dui.in@google.net', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (3, 3, 'Alfonso', 'Buchanan', NULL, '624-751-2887', NULL, 'mattis.velit@yahoo.org', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (4, 4, 'Nero', 'Moss', NULL, '', NULL, 'nunc@yahoo.org', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (5, 5, 'Gwendolyn', 'O''Connor', NULL, '658-319-5816', NULL, 'luctus.felis@icloud.edu', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (6, 6, 'Veronica', 'Martin', NULL, '341-783-7314', NULL, 'feugiat.nec@hotmail.ca', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (7, 7, 'Galvin', 'Cantrell', NULL, '851-966-8254', NULL, 'lacus@google.net', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (8, 8, 'Leroy', 'Ramos', NULL, 'x3375', NULL, 'porta@icloud.net', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (9, 9, 'Omar', 'Hunter', NULL, '655-134-8635', NULL, 'vestibulum.neque@outlook.net', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (10, 10, 'Daphne', 'Weaver', NULL, '', NULL, 'nonummy.ac@icloud.couk', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (11, 11, 'Demetrius', 'Estes', NULL, '', NULL, 'magna.sed@protonmail.edu', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (12, 12, 'Lucian', 'Roach', NULL, '923-718-1876', NULL, 'faucibus.morbi@aol.org', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (13, 13, 'Pamela', 'Hester', NULL, '134-184-6529', NULL, '', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (14, 14, 'Blaze', 'Morin', NULL, '836-625-5174', NULL, 'non@outlook.couk', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (15, 15, 'Juliet', 'Huff', NULL, '845-503-1283', NULL, 'nec.metus@icloud.edu', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (16, 16, 'Ignacia', 'Madden', NULL, '724-133-4375', NULL, 'ignaciam@cursus.com', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (17, 17, 'Yael', 'Mccullough', NULL, '385-657-6731', NULL, '', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (18, 18, 'Iona', 'Combs', NULL, '310-662-1032', NULL, 'tellus.eu.augue@hotmail.org', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (19, 19, 'Kiara', 'Hardin', NULL, '854-646-3244', NULL, 'auctor@google.com', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (20, 20, 'Keegan', 'Cherry', NULL, '688-338-0885', NULL, 'egestas.nunc.sed@hotmail.com', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (21, 21, 'Daquan', 'Sweeney', NULL, '362-272-6962', NULL, 'auctor.quis@aol.edu', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (22, 22, 'Raphael', 'Weeks', NULL, '644-977-8728', NULL, 'eget.varius.ultrices@hotmail.ca', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (23, 23, 'Gillian', 'Russell', NULL, '454-515-7210', NULL, 'integer@google.ca', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (24, 24, 'Teagan', 'Gates', NULL, '577-642-7576', NULL, 'imperdiet@aol.net', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (25, 25, 'Shaeleigh', 'Velasquez', NULL, '', NULL, 'nulla@outlook.edu', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (26, 26, 'Xantha', 'Ferrell', NULL, '', NULL, 'leo.in.lobortis@icloud.org', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (27, 27, 'Jolene', 'Hatfield', NULL, '927-582-8172', NULL, 'in.faucibus@hotmail.com', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (28, 28, 'Castor', 'Morin', NULL, '744-348-1878', NULL, 'dictum.eleifend.nunc@google.org', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (29, 29, 'Brett', 'Hooper', NULL, '685-132-9144', NULL, 'ac@protonmail.couk', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (30, 30, 'Philip', 'Kramer', NULL, '162-782-9257', NULL, 'mauris.blandit.enim@yahoo.org', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (31, 31, 'Jamalia', 'Gilmore', NULL, '', NULL, 'lacus.varius.et@google.ca', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (32, 32, 'Cassidy', 'Bright', NULL, '868-367-9885', NULL, 'tincidunt@yahoo.net', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (33, 33, 'Alice', 'Curtis', NULL, '282-215-0580', NULL, 'pellentesque.habitant@yahoo.ca', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (34, 34, 'Gavin', 'Robles', NULL, '443-366-5145', NULL, 'integer.sem@protonmail.ca', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (35, 35, 'Shannon', 'Molina', NULL, '153-111-3603', NULL, 'libero.nec@google.edu', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (36, 36, 'Tatiana', 'Robinson', NULL, '7555', NULL, 'at@protonmail.net', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (37, 37, 'Kasper', 'Summers', NULL, '531-287-0896', NULL, 'purus.accumsan@hotmail.org', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (38, 38, 'Jenette', 'M', NULL, '', NULL, 'magna.cras@google.ca', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (39, 39, 'Dana', 'Kirby', NULL, '636-752-6108', NULL, 'accumsan.neque@outlook.edu', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (40, 40, 'Shoshana', 'Reyes', NULL, '527-447-4261', NULL, 'porttitor.tellus.non@protonmail.com', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (41, 41, 'Jessamine', 'Nielsen', NULL, '131-553-2433', NULL, 'nielsen@yahoo.com', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (42, 42, 'Marsden', 'Woodard', NULL, '860-239-1934', NULL, 'woodard6920@nonvest.org', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (43, 43, 'Jonah', 'Sargent', NULL, '502-988-7436', NULL, 'sargentjonah@nunc.org', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (44, 44, 'Karyn', 'Clark', NULL, '618-723-3280', NULL, 'clark5035@icloud.com', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (45, 45, 'Gavin', 'Sandoval', NULL, '338-835-4312', NULL, 'sandoval9458@curae.net', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (46, 46, 'Malcolm', 'Delaney', NULL, '104-433-0714', NULL, 'delaney8479@aol.edu', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (47, 47, 'Guinevere', 'Campbell', NULL, '612-541-8593', NULL, 'campbellg@hotmail.ca', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (48, 48, 'Ishmael', 'David', NULL, '377-241-4622', NULL, 'david_ishmael@dolor.net', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (49, 49, 'Judith', 'Hogan', NULL, '397-230-4225', NULL, 'hogan2230@luctusinc.com', NULL);
INSERT INTO contact (contactID, companyID, firstName, lastName, title, busPhone, busExt, email, personalPhone) VALUES (50, 50, 'Zane', 'Delgado', NULL, '774-387-3551', NULL, 'delgadoz@tscales.net', NULL);

-- Table: dealer
DROP TABLE IF EXISTS dealer;

CREATE TABLE IF NOT EXISTS dealer (
    dealerID    INTEGER      NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    firstName   VARCHAR (50) NOT NULL,
    lastName    VARCHAR (50) NOT NULL,
    phone       VARCHAR (20),
    email       VARCHAR (60),
    companyName VARCHAR (50) NOT NULL
);


-- Table: event
DROP TABLE IF EXISTS event;

CREATE TABLE IF NOT EXISTS event (
    eventID          VARCHAR (10)  PRIMARY KEY
                                   NOT NULL,
    shortDescription VARCHAR (50),
    longDescription  VARCHAR (255),
    eventType        VARCHAR (15),
    startDate        DATE,
    endDate          DATE
);

INSERT INTO event (eventID, shortDescription, longDescription, eventType, startDate, endDate) VALUES ('PROMAT23', 'Promat', 'Manufacturing and Supply Chain Global Event in Chicago, IL', 'Tradeshow', '2023-09-07', '2023-09-09');

-- Table: lead
DROP TABLE IF EXISTS lead;

CREATE TABLE IF NOT EXISTS lead (
    leadID        INTEGER       PRIMARY KEY AUTOINCREMENT,
    eventID       INTEGER       REFERENCES event (eventID) 
                                NOT NULL,
    companyID     INTEGER       REFERENCES company (companyID) 
                                NOT NULL,
    contactID     INTEGER       REFERENCES contact (contactID) 
                                NOT NULL,
    dealerID      INTEGER,
    salesRepID    INTEGER,
    leadDate      DATETIME,
    rating        VARCHAR (4),
    contactMethod VARCHAR (5),
    takenBy       VARCHAR (10),
    salesForce    VARCHAR (13)  NOT NULL,
    productList   VARCHAR (255),
    notes         VARCHAR (255) 
);


-- Table: sample
DROP TABLE IF EXISTS sample;

CREATE TABLE IF NOT EXISTS sample (
    eventID     VARCHAR (10)  NOT NULL,
    leadDate    DATETIME      NOT NULL,
    firstName   VARCHAR (50)  NOT NULL,
    lastName    VARCHAR (50)  NOT NULL,
    phone       VARCHAR (20),
    email       VARCHAR (60),
    companyName VARCHAR (50)  NOT NULL,
    addr1       VARCHAR (30)  NOT NULL,
    city        VARCHAR (30)  NOT NULL,
    state       CHAR (2)      NOT NULL,
    postalCode  VARCHAR (15)  NOT NULL,
    country     VARCHAR (15)  NOT NULL,
    salesForce  VARCHAR (13)  NOT NULL,
    rating      VARCHAR (4)   DEFAULT NULL,
    notes       VARCHAR (255) 
);

INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Patience', 'Ferguson', '257-751-1863', 'fusce@icloud.ca', 'Nunc Interdum Industries', 'P.O. Box 573, 6734 Pellentesque, Road', 'PROVO', 'UT', '65383', 'US', 'Industrial', 'Cold', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Uriel', 'Golden', '792-693-5271', 'dui.in@google.net', 'Lectus Nullam Consulting', '9890 Nibh. Road', 'ANCHORAGE', 'AK', '81658', 'US', 'Industrial', '', 'EP ');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Alfonso', 'Buchanan', '624-751-2887', 'mattis.velit@yahoo.org', 'Iaculis Enim Sit Llc', 'Ap #361-2823 Ac, Road', 'HONOLULU', 'HI', '66144', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Nero', 'Moss', '', 'nunc@yahoo.org', 'In Faucibus Orci Pc', '7389 Auctor Road', 'LAFAYETTE', 'LA', '85075', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Gwendolyn', 'O''Connor', '658-319-5816', 'luctus.felis@icloud.edu', 'Quis Massa Mauris Institute', '6953 Blandit. Street', 'IQALUIT', 'NU', '71M 3X4', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Veronica', 'Martin', '341-783-7314', 'feugiat.nec@hotmail.ca', 'Nec Consulting', '3936 Sit Road', 'BURIN', 'NL', 'O8T 5H1', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Galvin', 'Cantrell', '851-966-8254', 'lacus@google.net', 'Diam Pellentesque Habitant Industries', '430-3279 Ornare Avenue', 'INDIANAPOLIS', 'IN', '76756', 'US', 'Industrial', 'Hot', 'Dimensioning');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Leroy', 'Ramos', 'x3375', 'porta@icloud.net', 'Nunc Nulla Foundation', 'Ap #372-8571 Massa. Avenue', 'WATERBURY', 'CT', '99730', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Omar', 'Hunter', '655-134-8635', 'vestibulum.neque@outlook.net', 'Molestie Orci Pc', '154-8362 Laoreet Road', 'HOLMAN', 'NT', 'B0S 7C2', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Daphne', 'Weaver', '', 'nonummy.ac@icloud.couk', 'Nec Tellus Foundation', '184-4703 Scelerisque Street', 'TOPEKA', 'KS', '35535', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Demetrius', 'Estes', '', 'magna.sed@protonmail.edu', 'Amet Institute', '', 'PANGNIRTUNG', 'NU', 'P2G 7C2', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Lucian', 'Roach', '923-718-1876', 'faucibus.morbi@aol.org', 'Nullam Feugiat Ltd', 'P.O. Box 384', 'KNOXVILLE', 'TN', '64304', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Pamela', 'Hester', '134-184-6529', '', 'Massa Vestibulum Corporation', 'Ap #674-6824 Bibendum Avenue', 'BOZEMAN', 'MT', '44676', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/7/2023', 'Blaze', 'Morin', '836-625-5174', 'non@outlook.couk', 'Et Ipsum Cursus Industries', 'Ap #964-1299 Eu, Street', 'PRINCE ALBERT', 'SK', 'S8L 6G8', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Juliet', 'Huff', '845-503-1283', 'nec.metus@icloud.edu', 'Neque Sed Sem Ltd', '819-5402 Maecenas Road', 'LOURDES', 'MB', '29J 1X4', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Ignacia', 'Madden', '724-133-4375', 'ignaciam@cursus.com', 'Cursus Et Llc', '575-5891 Nullam Avenue', 'GUYSBOROUGH', 'NS', 'N1Y 8E3', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Yael', 'Mccullough', '385-657-6731', '', 'Dolor Industries', '322-9711 Ligula Road', 'FOGO', 'NL', 'T6K 6L1', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Iona', 'Combs', '310-662-1032', 'tellus.eu.augue@hotmail.org', 'Ante Company', 'Ap #819-4455 Urna Avenue', 'VILNA', 'AB', '27R 8J2', 'CA', 'International', '', 'LI');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Kiara', 'Hardin', '854-646-3244', 'auctor@google.com', 'Mauris Nulla Llc', '8870 Erat Road', 'MILLET', 'AB', 'L5C 5P9', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Keegan', 'Cherry', '688-338-0885', 'egestas.nunc.sed@hotmail.com', 'Dictum Eu Corporation', '140-2552 A Road', 'WABAMUN', 'AB', '78S 8Y5', 'CA', 'International', 'Hot', 'EP');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Daquan', 'Sweeney', '362-272-6962', 'auctor.quis@aol.edu', 'Sociosqu Associates', 'Ap #819-7889 Cras Ave', 'RIGOLET', 'NL', 'J1S 4W1', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Raphael', 'Weeks', '644-977-8728', 'eget.varius.ultrices@hotmail.ca', 'Quam Pellentesque Corp.', '766 Proin Street', 'IOWA CITY', 'IA', '52240', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Gillian', 'Russell', '454-515-7210', 'integer@google.ca', 'Porttitor Scelerisque Neque Inc.', 'Ap #212-9985 Lacus, Road', 'LANARK COUNTY', 'ON', '88H 5T8', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Teagan', 'Gates', '577-642-7576', 'imperdiet@aol.net', 'Et Llc', 'Ap #864-6178 Accumsan Avenue', 'DALY', 'MB', '43G 6M7', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Shaeleigh', 'Velasquez', '', 'nulla@outlook.edu', 'Nulla Corporation', 'Ap #730-6931 Eu Road', 'CHEYENNE', 'WY', '41393', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Xantha', 'Ferrell', '', 'leo.in.lobortis@icloud.org', 'Risus Quis Diam Inc.', '730-8726 Lacus. Road', 'PORTLAND', 'OR', '15915', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Jolene', 'Hatfield', '927-582-8172', 'in.faucibus@hotmail.com', 'Cursus Inc.', '3294 Faucibus. Avenue', 'METAIRIE', 'LA', '51567', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Castor', 'Morin', '744-348-1878', 'dictum.eleifend.nunc@google.org', 'Risus Nunc Foundation', 'Ap #573-8453 Odio Road', 'BEAUSEJOUR', 'MB', '23V 6G0', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Brett', 'Hooper', '685-132-9144', 'ac@protonmail.couk', 'Congue In Inc.', '1372 Fusce Street', 'SHREVEPORT', 'LA', '67846', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Philip', 'Kramer', '162-782-9257', 'mauris.blandit.enim@yahoo.org', 'Dignissim Tempor Pc', '956-6769 At Road', 'DIEPPE', 'NB', 'B1T 8N7', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Jamalia', 'Gilmore', '', 'lacus.varius.et@google.ca', 'Fusce Dolor Industries', 'P.O. Box 297, 5595 Donec Road', 'CAMBRIDGE BAY', 'NU', 'B4V 0Y6', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Cassidy', 'Bright', '868-367-9885', 'tincidunt@yahoo.net', 'Vulputate Eu Odio Incorporated', '159-3554 In Road', 'GARY', 'IN', '27203', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Alice', 'Curtis', '282-215-0580', 'pellentesque.habitant@yahoo.ca', 'Lorem Ipsum Ltd', 'Ap #819-5910 Vehicula Avenue', 'PIKE CREEK', 'DE', '94745', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Gavin', 'Robles', '443-366-5145', 'integer.sem@protonmail.ca', 'Congue Turpis In Associates', '3947 Tincidunt, Street', 'HENDERSON', 'NV', '30564', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Shannon', 'Molina', '153-111-3603', 'libero.nec@google.edu', 'Tristique Pharetra Consulting', 'P.O. Box 440', 'CINCINNATI', 'OH', '72111', 'US', 'Industrial', 'Warm', 'LI');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Tatiana', 'Robinson', '7555', 'at@protonmail.net', 'Magnis Ltd', '297-8635 Placerat Avenue', 'ROCHESTER', 'MN', '75149', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Kasper', 'Summers', '531-287-0896', 'purus.accumsan@hotmail.org', 'Libero Et Tristique Limited', 'Ap #307-9801 Euismod Road', 'HALIFAX', 'NS', 'G6J 4P9', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Jenette', 'M', '', 'magna.cras@google.ca', 'Tincidunt Tempus Consulting', 'Ste 233-9631 Mauris Street', 'FAHLER', 'AB', '34L 1R7', 'CA', 'International', 'Cold', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Dana', 'Kirby', '636-752-6108', 'accumsan.neque@outlook.edu', 'Lacus Etiam Limited', 'P.O. Box 403, 4746 Est Ave', 'HOUSTON', 'TX', '27322', 'US', 'Industrial', 'Hot', 'LI Roughdeck');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/8/2023', 'Shoshana', 'Reyes', '527-447-4261', 'porttitor.tellus.non@protonmail.com', 'Eu Neque Pellentesque Ltd', '945-9737 Morbi Avenue', 'CLEVELAND', 'OH', '87575', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/9/2023', 'Jessamine', 'Nielsen', '131-553-2433', 'nielsen@yahoo.com', 'Lacus Quisque Llp', '685 Et Avenue', 'AKRON', 'OH', '67778', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/9/2023', 'Marsden', 'Woodard', '860-239-1934', 'woodard6920@nonvest.org', 'Non Vestibulum Associates', '5801 Consequat Avenue', 'KAKISA', 'NT', '38G 7C8', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/9/2023', 'Jonah', 'Sargent', '502-988-7436', 'sargentjonah@nunc.org', 'Nunc Sed Consulting', 'P.O. Box 223, 9007 Luctus Street', 'BAIE-SAINT-PAUL', 'QC', 'J1Y 1E3', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/9/2023', 'Karyn', 'Clark', '618-723-3280', 'clark5035@icloud.com', 'Velit Eu Inc.', 'P.O. Box 667, 6598 Sagittis Avenue', 'CANORA', 'SK', 'S4X 9V3', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/9/2023', 'Gavin', 'Sandoval', '338-835-4312', 'sandoval9458@curae.net', 'Curae Associates', '727-2267 Feugiat Street', 'KAPOLEI', 'HI', '80536', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/9/2023', 'Malcolm', 'Delaney', '104-433-0714', 'delaney8479@aol.edu', 'In Aliquet Lobortis Pc', 'Ap #687-3903 Pretium Road', 'HONOLULU', 'HI', '35902', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/9/2023', 'Guinevere', 'Campbell', '612-541-8593', 'campbellg@hotmail.ca', 'Egestas Llc', 'P.O. Box 888, 7552 Diam Avenue', 'MISSOULA', 'MT', '75573', 'US', 'Industrial', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/9/2023', 'Ishmael', 'David', '377-241-4622', 'david_ishmael@dolor.net', 'Dolor Sit Inc.', '977-2312 Justo Avenue', 'WATSON LAKE', 'YT', 'Y6Y 2X4', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/9/2023', 'Judith', 'Hogan', '397-230-4225', 'hogan2230@luctusinc.com', 'Nec Luctus Felis Industries', '1435 Cras Road', 'WATSON LAKE', 'YT', 'Y4R 4R3', 'CA', 'International', '', '');
INSERT INTO sample (eventID, leadDate, firstName, lastName, phone, email, companyName, addr1, city, state, postalCode, country, salesForce, rating, notes) VALUES ('PROMAT23', '9/9/2023', 'Zane', 'Delgado', '774-387-3551', 'delgadoz@tscales.net', 'Tincidunt Dui Augue Llc', '362-4088 Eu, Avenue', 'FORT COLLINS', 'CO', '33027', 'US', 'Industrial', '', '');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
