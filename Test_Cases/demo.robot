*** Comments ***
# suite de tests


*** Settings ***
Documentation       Ma première suite de tests avec RobotFramework
...                 Ceci est un exemple de documentation
...                 ****************************************************************

Resource            ../Ressources/ressources1.robot


*** Test Cases ***
tc01 login_test
    [Documentation]    Ce test est pour tester la fonctionnalité login
    ...    Tester le happy path ou le sunny day = scénario nominal
    se connecter au site demo Orange
    remplir le formulaire de login
    valider l'affichage de la page d'accueil
    fermer le navigateur

tc02 logout_test
    se connecter au site demo Orange
    remplir le formulaire de login
    valider l'affichage de la page d'accueil
    se déconnecter de l'application Orange demo
    fermer le navigateur
