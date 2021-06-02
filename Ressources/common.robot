*** Settings ***
Library  SeleniumLibrary
Resource  variables.robot

*** Keywords ***
Begin Web Test
    open browser  ${GOOGLE_URL}  ${BROWSER}

    maximize browser window


End web Test
     close browser