*** Settings ***
Library    String
Library    RequestsLibrary
Library    Collections
Resource    ../resource/geral.resource

*** Variables ***

*** Keywords ***
Entrar com usuário administrador
    ${body}    Create Dictionary    mail=${email}        password=${password}
    Log    ${body}
    Criar Sessão
    ${resposta}    POST On Session    alias=blackList    url=/api/login/    json=${body}
    Log    ${resposta.json()}
    Set Test Variable    ${TOKEN}    ${resposta.json()["token"]}

Validar o token e gravar em um header de autorização
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    GET On Session    alias=blackList    url=/api/validateToken    headers=${headers}
    Log    resposta da solicitação: ${resposta.content}
    Log    ${TOKEN}