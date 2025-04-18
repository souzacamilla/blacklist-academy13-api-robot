*** Settings ***
Library    String
Library    RequestsLibrary
Library    Collections

*** Variables ***
${url}    https://black-list.qacoders.dev.br
${email}    sysadmin@qacoders.com
${password}    1234@Test


*** Keywords ***
Criar Sessão 
    ${headers}    Create Dictionary    accept=application/json  Content-Type=application/json
    Create Session    alias=blackList    url=${url}    headers=${headers}

    