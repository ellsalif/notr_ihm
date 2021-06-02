*** Settings ***
Library  SeleniumLibrary
Resource   ../variables.robot
*** Keywords ***
Charger la Page web
  Go TO  ${GOOGLE_URL}
  wait until page contains      Total  500

Rechecher le produit
    clear element text  xpath=//*[@id="woocommerce-product-search-field-0"]

    input text  xpath=//*[@id="woocommerce-product-search-field-0"]  robe

    click element  xpath=/html/body/div[2]/header[1]/div/div[1]/div/div/div[2]/div/div[1]/form/div/button

    wait until page contains   Affichage de  500

