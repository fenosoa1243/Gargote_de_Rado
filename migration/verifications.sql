--Etape 1 : afficher les plats du plus cher au moins cher.
SELECT * FROM plats ORDER BY prix DESC;

--Etape 2 :nombre de plats par catégorie, y compris les catégories sans plat.
SELECT c.nom AS categorie, COUNT(p.id) AS nombre_de_plats
FROM categories c
LEFT JOIN plats p ON c.id = p.categorie_id
GROUP BY c.id, c.nom;

--Etape 3 : montant total de chaque commande.
select cp.*,p.nom,c.date_commande from commande_plats as cp
 join plats as p on cp.plat_id = p.id
 join commandes as c on cp.commande_id = c.id;

select c.id, SUM(p.prix * cp.quantite) as montant_total from commande_plats as cp
 join plats as p on cp.plat_id = p.id
 join commandes as c on cp.commande_id = c.id
group by c.id;

