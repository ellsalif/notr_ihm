*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Choisir Produit Interessant
    click element  xpath=/html/body/div[2]/div[2]/div/div[2]/div/div/div/div/div/div/div[2]/ul/li[1]/div/div[1]/a
    wait until page contains  Robe de  100
Choisir taille cable
    select from list by label  xpath=//*[@id="taille"]   S
   wait until page contains   Effacer  100
Ajouter au panier
    click element  xpath=/html/body/div[2]/div[2]/div/div/div/div/div/div/div/div/div[2]/div[2]/form/div/div[2]/button[3]
    wait until page contains   a été ajouté à votre panier  500



