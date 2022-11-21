*** Settings ***
Documentation     Testes na tela de Login
Resource          ../global/GlobalKeywords.robot
Resource          ../pages/Login.robot

Test Setup        Acessar o site
Test Teardown     Encerrar o Navegador

*** Test Cases ***
CT01: Tentar realizar Login sem fazer o preenchimento dos campos
    Clicar no botão Entrar
    O Sistema deverá indicar que os campos Email e Senha são de preenchimento obrigatório

CT02: Realizar Login válido
    Informar email válido
    Informar senha válida
    Clicar no botão Entrar
    O Sistema deverá autenticar o usuário logado com sucesso

CT03: Tentar realizar Login com usuário inexistente
    Informar email inválido
    Informar senha inválida
    Clicar no botão Entrar
    O Sistema não deverá autenticar o usuário

CT04: Tentar realizar Login informando email válido e senha inválida
    Informar email válido
    Informar senha inválida
    Clicar no botão Entrar
    O Sistema não deverá autenticar o usuário

CT05: Tentar realizar Login informando email inválido e senha válido
    Informar email inválido
    Informar senha válida
    Clicar no botão Entrar
    O Sistema não deverá autenticar o usuário