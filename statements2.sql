
CREATE DATABASE mysqlfun;

CREATE TABLE Klant (
    Id INT(11) NOT NULL AUTO_INCREMENT,
    Naam VARCHAR(255),
    Achternaam VARCHAR(255),
    Adres_straatnaam VARCHAR(255),
    Stad VARCHAR(255),
    PRIMARY KEY(Id)
);

CREATE TABLE Orders (
    Id int NOT NULL AUTO_INCREMENT,
    Klant_id INT(11),
    Product VARCHAR(255),
    Aantal INT(11),
    Prijs DECIMAL(6,2),
    PRIMARY KEY (Id),
    FOREIGN KEY (Klant_id) REFERENCES Klant(Id)
);

INSERT INTO Klant (
    Naam, Achternaam, Adres_straatnaam, Stad
) VALUES (
    'Osman', 'Oz', 'kolfschotenstraat 144', 'Amsterdam'),
    ('Yuri', 'de heer', 'diemerplein 122', 'Rotterdam'),
    ('Jordan', 'Gilbert', 'weesperstraat 18', 'Den haag');

INSERT INTO Orders (
    Klant_id, Product, Aantal, Prijs
) VALUES (
     1,'Roos', 3, 6),
    (2, 'Boeket', 1, 5),
    (2, 'Witte Rozen', 3, 12),
    (3, 'Kleurrijke Rozen', 7, 14),
    (3, 'Orchidee', 1, 5),
    (3, 'Boeket Stralend', 2, 10);



