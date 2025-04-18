*** Settings ***
Resource    ../resource/geral.resource
Resource    ../resource/login_adm.resource

*** Test Cases ***
CT00 login user
    Criar Sessão
    Entrar com usuário administrador
    Validar o token e gravar em um header de autorização