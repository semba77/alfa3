use alfa3;

CREATE TABLE Person (
    id_p INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(15) NOT NULL,
    surname VARCHAR(15) NOT NULL,
    birth DATETIME NOT NULL,
    education_id INT NOT NULL,
    residence_id INT NOT NULL
);

CREATE TABLE Home (
    residence_id INT AUTO_INCREMENT PRIMARY KEY,
    home_address VARCHAR(25) NOT NULL,
    residence_type INT NOT NULL
);

CREATE TABLE Education (
    education_id INT AUTO_INCREMENT PRIMARY KEY,
    e_type ENUM('elementary School', 'high School', 'College') NOT NULL
);

CREATE TABLE Residence_type (
    r_type_id INT AUTO_INCREMENT PRIMARY KEY,
    r_type ENUM('apartment', 'house', 'bungalow') NOT NULL
);

CREATE TABLE Family_relations (
    relations_id INT AUTO_INCREMENT PRIMARY KEY,
    parent INT,
    child INT,
    sibling1 INT,
    sibling2 INT
);
CREATE TABLE Family_re (
    relations_id INT AUTO_INCREMENT PRIMARY KEY
);