*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot
Test Setup     Abrir Navegador
Test Teardown  Fechar Navegador

*** Test Cases ***
Login com credenciais válidas
    Preencher Credenciais
    Submeter Login
    Validar Login Com Sucesso

Login com credenciais inválidas
    Preencher Credenciais Invalidas
    Submeter Login
    Validar Mensagem De Erro