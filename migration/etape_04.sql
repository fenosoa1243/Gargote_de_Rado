
CREATE TABLE clients(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO clients (nom, prenom, email) VALUES 
('RAKOTO', 'Jean', 'Jean@gmail.com'),
('RABE', 'Sarah', 'Sarah@gmail.com');

alter table commandes add column client_id INTEGER REFERENCES clients(id);

UPDATE commandes set client_id = 1 where id in (1, 2);
UPDATE commandes set client_id = 2 where id in (3);
