# Witcher SQL database

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

