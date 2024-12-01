- Table Article (classe mère)
CREATE TABLE Article (
    id INT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    disponible Boolean 
);

-- Table Livre (hérite de Article)
CREATE TABLE Livre (
    id INT PRIMARY KEY,
    auteur VARCHAR(255),
    isbn INT,
    FOREIGN KEY (id) REFERENCES Article(id)
);

-- Table CD (hérite de Article)
CREATE TABLE CD (
    id INT PRIMARY KEY,
    duree INT,
    FOREIGN KEY (id) REFERENCES Article(id)
);

-- Table DVD (hérite de Article)
CREATE TABLE DVD (
    id INT PRIMARY KEY,
    duree INT,
    FOREIGN KEY (id) REFERENCES Article(id)
);
-- Création de la table Compte
CREATE TABLE Compte (
    id INT PRIMARY KEY,              
    date_creation DATE,
    articles_empruntes VARCHAR(255),
    historique_emprunts VARCHAR(255)
) ENGINE=InnoDB;  -- InnoDB est utilisé pour supporter les clés étrangères


CREATE TABLE Membre (
    id INT PRIMARY KEY,              
    prenom VARCHAR(100),
    nom VARCHAR(100),
    adresse VARCHAR(255),
    telephone VARCHAR(20),
    email VARCHAR(255),
    compte_id INT,                    
    FOREIGN KEY (compte_id) REFERENCES Compte(id) 
) ENGINE=InnoDB;

-- Table Compte
CREATE TABLE Compte (
    id INT PRIMARY KEY,
    date_creation DATE,
    articles_empruntes VARCHAR(255),
    historique_emprunts VARCHAR(255)
);

- Table Bibliothécaire
CREATE TABLE Bibliothecaire (
    id INT PRIMARY KEY,
    nom VARCHAR(100),
    email VARCHAR(255)
);

-- Table Administrateur (hérite de Bibliothécaire)
CREATE TABLE Administrateur (
    id INT PRIMARY KEY,
    FOREIGN KEY (id) REFERENCES Bibliothecaire(id)
);