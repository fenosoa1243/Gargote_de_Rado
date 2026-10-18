--2
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100)
);

insert into categories (nom) values
('Plat malagasy'),
('Plat chinois'),
('soupe'),
('Dessert  et goûter'),
('Boisson');

alter table plats add column categorie_id integer references categories(id);

update plats set categorie_id = 1 where nom in ('Romazava', 'Ravitoto sy henakisoa', 'Akoho sy voanio');
update plats set categorie_id = 2 where nom in ('Mi sao', 'Soupe chinoise');
update plats set categorie_id = 3 where nom in ('Soupe chinoise');
update plats set categorie_id = 4 where nom in ('Mofo gasy');
update plats set categorie_id = 5 where nom in ('Ranon ampango');
