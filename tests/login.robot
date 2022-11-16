*** Settings ***
Documentation        Login tests

Resource        ../resources/main.resource

Test Setup        Start Test
Test Teardown     Finish Test

*** Test Cases ***
Deve logar com sucesso
    login.Go To Login Page
    login.Submit Credentials     papito@gmail.com     vaibrasil
    User Logged in

Não deve logar com senha incorreta
    login.Go To Login Page
    login.Submit Credentials     papito@gmail.com     abc123
    Toast Message Should Be     Credenciais inválidas, tente novamente!
    #Thinking Time
    Sleep
    


     