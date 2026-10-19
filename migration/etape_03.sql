--3
CREATE TABLE commandes (
    id SERIAL PRIMARY KEY,
    date_commande DATE
);

CREATE TABLE commande_plats (
    id SERIAL PRIMARY KEY,
    commande_id INTEGER REFERENCES commandes(id),
    plat_id INTEGER REFERENCES plats(id),
    quantite INTEGER
);

Insert into commandes (date_commande) values
('2024-01-01'),
('2024-01-02'),
('2024-01-03');

Insert into commande_plats (commande_id, plat_id, quantite) values
(1, 1, 2),
(1, 2, 1),
(2, 3, 3),
(2, 4, 1),
(3, 5, 2),
(3, 6, 4);

select cp.*,p.nom,c.date_commande from commande_plats as cp
inner join plats as p on cp.plat_id = p.id
inner join commandes as c on cp.commande_id = c.id;

Insert into commandes (date_commande) values ('2025-01-10');