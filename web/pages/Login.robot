*** Settings ***
Library       SeleniumLibrary
Resource    ../global/GlobalKeywords.robot
Variables  ../locators/Login.py
Variables  ../dados/usuario.py
Variables  ../dados/mensagens.py

*** Keywords ***
Informar email válido
  Input Text                       ${campo_Email}     ${Usuario_Valido_Email}

Informar senha válida
  Input Password                   ${campo_Senha}     ${Usuario_Valido_Senha}

Informar email inválido
  Input Text                       ${campo_Email}     ${Usuario_Invalido_Email}

Informar senha inválida
  Input Password                   ${campo_Senha}     ${Usuario_Invalido_Senha}

Clicar no botão Entrar
  Click Button                     ${btn_Entrar}

O Sistema deverá autenticar o usuário logado com sucesso
  Valida corretamente a URL        ${Url_Apos_Login}
  Valida a mensagem de alerta      ${Msg_De_Bem_Vindo}${Usuario_Valido_Nome}!

O Sistema deverá indicar que os campos Email e Senha são de preenchimento obrigatório
  Valida a mensagem de alerta      ${Msg_Email_Obrigatorio}
  Valida a mensagem de alerta      ${Msg_Senha_Obrigatorio}

O Sistema não deverá autenticar o usuário
  Valida corretamente a URL        ${Base_Url}
  Valida a mensagem de alerta      ${Msg_Problemas_Com_Login}
