*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Navegador}        chrome
${Base_Url}         https://seubarriga.wcaquino.me/login
${Alerta}           xpath=//*[@role='alert']

*** Keywords ***
Acessar o site
  Open Browser      ${Base_Url}   ${Navegador}
  Maximize Browser Window

Encerrar o Navegador
  Close Browser

Valida corretamente a URL
  [Arguments]       ${urlAtual}
  ${urlAtual}=      Get Location
  Location Should Be    ${urlAtual}

Valida a mensagem de alerta
  [Arguments]       ${mensagem_esperada}
  ${mensagem}=      Get WebElement           ${Alerta}
  Page Should Contain    ${mensagem_esperada}

