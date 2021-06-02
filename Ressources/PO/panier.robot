*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Inspecter panier
    click element  xpath=/html/body/div[2]/div[2]/div/div/div/div/div/div/div/div/div[1]/div/a
    wait until page contains  Panier  100
    click element  xpath=/html/body/div[1]/div[2]/div/div[2]/div/div/div/main/article/div/div/div[2]/div/div/a
    wait until page contains  politique de confidentialité  100

Passer la commande
    clear element text  xpath=//*[@id="billing_first_name"]
    input text  xpath=//*[@id="billing_first_name"]  Sal
    clear element text  xpath=//*[@id="billing_last_name"]
    input text  xpath=//*[@id="billing_last_name"]  BON NGUI
    clear element text  xpath=//*[@id="billing_company"]
    input text  xpath=//*[@id="billing_company"]  sng service
    clear element text  xpath=//*[@id="billing_address_1"]
    input text  xpath=//*[@id="billing_address_1"]  2 rue des affaires
    clear element text  xpath=//*[@id="billing_address_2"]
    input text  xpath=//*[@id="billing_address_2"]  etage 2
    clear element text  xpath=//*[@id="billing_postcode"]
    input text  xpath=//*[@id="billing_postcode"]   35000
    clear element text  xpath=//*[@id="billing_city"]
    input text  xpath=//*[@id="billing_city"]   Paris
    clear element text  xpath=//*[@id="billing_phone"]
    input text  xpath=//*[@id="billing_phone"]  0611456790
    clear element text  xpath=//*[@id="billing_email"]
    input text  xpath=//*[@id="billing_email"]  yes@yahoo.fr
    Sleep   10s
    click element  xpath=//*[@id="terms"]
    Sleep  10s
    click element  xpath=/html/body/div/div/div/div
