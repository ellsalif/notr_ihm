*** Settings ***
Resource  ../Ressources/common.robot
Resource  ../Ressources/PO/PageAccueil.robot
Resource   ../Ressources/PO/PageProduit.robot
Resource   ../Ressources/PO/panier.robot

Suite Setup  common.Begin Web Test
Suite Teardown  common.End Web Test
*** Test Cases ***
Voir Produit Disponibles
    PageAccueil.Charger la Page web
    PageAccueil.Rechecher le produit

Choisir son produit
    PageProduit.Choisir Produit Interessant
    PageProduit.Choisir taille cable
    PageProduit.Ajouter au panier
Voir le panier
    panier.Inspecter panier
Commander
    panier.Passer la commande





