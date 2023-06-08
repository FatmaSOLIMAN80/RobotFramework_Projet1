*** Settings ***
Library     SeleniumLibrary


*** Variables ***
# variables scalaires qui contiennent une seule valeur
${url}=         https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=     chrome
${username}=    Admin
${password}=    admin123


*** Keywords ***
se connecter au site demo Orange
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    4

remplir le formulaire de login
    Clear Element Text    name:username
    Input Text    name:username    ${username}
    Clear Element Text    name:password
    Input Password    name:password    ${password}
    Click Button    xpath://button[@type='submit']
    Sleep    2

valider l'affichage de la page d'accueil
    Page Should Contain    Dashboard
    Sleep    2

se déconnecter de l'application Orange demo
    Click Image    xpath:(//img[@alt='profile picture'])[1]
    Sleep    2
    Click Link    link:Logout

fermer le navigateur
    Sleep    2
    Close Browser
