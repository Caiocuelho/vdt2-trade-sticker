*** Settings ***
Documentation       Login Page   
Library     Browser

*** Keywords ***

Go To Login Page
   New Page      https://trade-sticker-dev.vercel.app 
    
Submit Credentials
    [Arguments]    ${email}    ${password}
    Fill Text     css=input[name=email]            ${email}
    Fill Text     css=input[name=password]         ${password}
    Click         css=button >> text=Entrar

Toast Menssage Should Be
         [Arguments]    ${expected_message}

         ${locator}   
         ...    Set Variable    
         ...    css=.Toastify__toast-body div >> text=Credenciais inválidas, tente novamente!

  Wait For Elements State    ${locator}    visible    1