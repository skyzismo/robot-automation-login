*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir Navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Preencher Credenciais
    Clear Element Text    id=username
    Clear Element Text    id=password
    Input Text    id=username    ${USERNAME}
    Input Text    id=password    ${PASSWORD}

Submeter Login
    Click Button    css=button[type="submit"]

Validar Login Com Sucesso
    Wait Until Page Contains    You logged into a secure area!

Fechar Navegador
    Close Browser

Preencher Credenciais Invalidas
    Clear Element Text    id=username
    Clear Element Text    id=password
    Input Text    id=username    usuario_invalido
    Input Text    id=password    senha_errada

Validar Mensagem De Erro
    Wait Until Element Is Visible    css=.flash.error
    Element Should Contain           css=.flash.error    Your username is invalid!
