# NIVEAU 1

## Étape 1 – La carte
Travail:

  plats(**id** , nom, prix);

piege:Quel type choisissez-vous pour le prix ? Quel identifiant choisissez-vous ?

 type pour le prix: INTEGER

 identifiant: prix

 ## 2 – Les catégories

 travail:
 
  categories(**id** , nom);

  plats(**id** , nom, prix,#categorie_id);

piege: Pourquoi ne pas simplement ajouter une colonne categorie VARCHAR(50) dans la table des
plats ? Donnez un exemple de problème concret.

  car Si on décide de modifier le nom d'une catégorie, on doit mettre à jour tous les enregistrements dans la table des plats.
  par exemple, si on change le nom de la catégorie "plat malagasy" en "soupe", il faudrait mettre à jour tous les plats qui appartiennent à cette catégorie.

## 3 – Les commandes

 travail:

  commandes(**id** , date_commande);

  plats_commandes(**commande_id**, **plat_id**, quantite);

piege:Où placez-vous la quantité ?

    dans la table plats_commandes, car c'est une information qui dépend de la commande et du plat.