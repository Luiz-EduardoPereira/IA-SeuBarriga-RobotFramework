*** Settings ***
Documentation     Teste na tela de Criar Movimentação
Resource          ../global/GlobalKeywords.robot
Resource          ../pages/Login.robot
Resource          ../pages/Movimentacao.robot

Test Setup        Acessar o site
Test Teardown     Encerrar o Navegador

*** Test Cases ***
# Cenário onde foi encontrado um bug na aplicação #
CT01: Criar movimentação do tipo Receita inserindo o valor com vírgula.
    Informar email válido
    Informar senha válida
    Clicar no botão Entrar
    O Sistema deverá autenticar o usuário logado com sucesso
    Acessar o Menu Criar Movimentação
    Informar a Data da Movimentação
    Informar a Data de Pagamento
    Informar a Descrição
    Informar o Interessado
    Informar o valor de 4150,80
    Clicar em Salvar
    O Sistema deverá retornar uma mensagem de sucesso