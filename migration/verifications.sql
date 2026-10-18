--Etape 1 : afficher les plats du plus cher au moins cher.
SELECT * FROM plats ORDER BY prix DESC;

--Etape 2 :nombre de plats par catégorie, y compris les catégories sans plat.
SELECT c.nom AS categorie, COUNT(p.id) AS nombre_de_plats
FROM categories c
LEFT JOIN plats p ON c.id = p.categorie_id
GROUP BY c.id, c.nom;