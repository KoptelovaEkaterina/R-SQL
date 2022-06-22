# Witcher SQL database

# Creating the tables

#I created a table with the headers name, race, gender, country, status, ability and age. Primary key is name. Age mustn't be lower then zero.  


 CREATE TABLE Kontynent (
  name TEXT,
  race TEXT,
  gender TEXT,
  country TEXT,
  status TEXT,
  ability TEXT,
  age INTEGER,
  PRIMARY KEY (name),
  CHECK (age > 0)
);


# Then I added values matching the headers. I put the words in 'quotes', numbers leave without. For missing values I used NULL.


INSERT INTO Kontynent VALUES ('Cirilla', 'human', 'female', 'Cintra', 'princess', 'Elder blood gene', 13),
('Geralt of Rivia', 'mutant', 'male', 'Rivia', 'witcher', 'Superhuman abilities', 103),
('Yennefer of Vengerberg', 'quarter elf', 'female', 'Aedirn', 'mage', 'Magic', 90), 
('Dandelion', 'human', 'male', 'Redania', 'bard', 'Lute playing', 40),
('Pavetta', 'human', 'female', 'Cintra', 'princess', 'Elder blood gene', 16),
('Filavandrel aep Fidhail', 'elf', 'male', 'Dol Blathanna', 'king', 'Fighting', NULL),
('Triss Merigold', 'human', 'female', 'Temeria', 'mage', 'Magic', 37),
('Renfri',	'human',	'female',	'Creyden',	'princess',	'Fighting',	18)
('Calanthe', 'human', 'female', 'Cintra', 'queen', 'Fighting', 45),
('Cahir Mawr Dyffryn aep Ceallach', 'human', 'male', 'Nilfgaard', 'knight', 'Fighting', 25),
('Vesemir', 'mutant', 'male', 'Nilfgaard', 'witcher', 'Superhuman abilities', 330),
('Mousesack', 'human', 'male', 'Skellige', 'druid', 'Magic', NULL),
('Eist Tuirseach', 'human', 'male', 'Skellige', 'king', 'Fighting', NULL),
('Emhyr var Emreis', 'human', 'male', 'Nilfgaard', 'emperor', 'Fighting', 51),
('Tissaia de Vries', 'human', 'female', 'Temeria', 'mage', 'Magic', NULL),
('Istredd', 'human', 'male', 'Kovir', 'mage', 'Magic', 75),
('Stregobor', 'human', 'male', 'Kovir', 'mage', 'Magic', 478),
('Fringilla', 'human', 'female', 'Nilfgaard', 'mage', 'Magic', 70),
('Francesca Findabair', 'elf', 'female', 'Dol Blathanna', 'queen', 'Magic', NULL),
('Adda the White', 'human', 'female', 'Temeria', 'princess', 'striga', 14),
('Foltest',	'human',	'male',	'Temeria',	'king',	'Fighting', 45)
('Sabrina Glevissig', 'human', 'female', 'Kaedwen', 'mage', 'Magic', 73),
('Vilgefortz', 'human', 'male', 'Kaedwen', 'mage', 'Fighting', 35),
('Eithne', 'driad', 'female', 'Brokilon', 'queen', 'Wisdom', NULL),
('Nenneke',	'human',	'female',	'Temeria',	'clergy',	'Healing',	NULL)



# Linking tables

CREATE TABLE heroesname (
  hero INTEGER,
  name VARCHAR (30),
  status VARCHAR (30),
  PRIMARY KEY (hero)
);

CREATE TABLE country (
  country_id INTEGER,
  country_name VARCHAR (30),
  PRIMARY KEY (country_id)
);


CREATE TABLE possesions (
  possesions_id INTEGER,
  hero INTEGER,
  country_id INTEGER,  
  PRIMARY KEY (possesions_id),
  FOREIGN KEY (hero)
    REFERENCES heroesname (hero),
  FOREIGN KEY (country_id)
    REFERENCES country (country_id)  
);


# Filling in the tables

INSERT INTO country VALUES (1, 'Cintra'), (2, 'Nilfgaard'), (3, 'Temeria'), (4, 'Rivia'), (5, 'Aedirn'), (6, 'Redania'),  (7, 'Dol Blathanna'), (8, 'Creyden')

INSERT INTO heroesname VALUES (1, 'Pavetta', 'status'), (2, 'Cahir', 'knight'), (3, 'Triss', 'mage'), (4, 'Geralt', 'witcher'),
(5, 'Yennefer', 'mage'), (6, 'Jaskier', 'bard'), (7, 'Filavandrel', 'king'), (8, 'Renfri', 'princess'), (9, 'Calanthe', 'queen'), (10, 'Tissaia', 'mage')

INSERT INTO possesions VALUES (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5), (6, 6, 6), (7, 7, 7), (8, 8, 8)





