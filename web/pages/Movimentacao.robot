*** Settings ***
Library       SeleniumLibrary
Resource    ../global/GlobalKeywords.robot
Variables   ../dados/mensagens.py
Variables   ../locators/Movimentacao.py
Variables   ../dados/movimentacao.py

*** Keywords ***
Acessar o Menu Criar Movimentação
  Click Link                                 ${menu_Criar_Movimentacao}
  Valida corretamente a URL                  ${UrlMovimentacao}

Informar a Data da Movimentação
  Input Text    ${campo_Dt_Movimentacao}     ${Dt_Movimentacao}

Informar a Data de Pagamento
  Input Text    ${campo_Dt_Pagamento}        ${Dt_Pagamento}

Informar a Descrição
  Input Text    ${campo_Descricao}           ${Descricao}

Informar o Interessado
  Input Text    ${campo_Interessado}         ${Interessado}

Informar o valor de ${Valor}
  Input Text    ${campo_Valor}              ${Valor}

Clicar em Salvar
  Click Button    ${btn_Salvar}

O Sistema deverá retornar uma mensagem de sucesso
  Valida a mensagem de alerta    ${Msg_De_Movimentacao_Criada}