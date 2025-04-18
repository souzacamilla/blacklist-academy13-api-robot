*** Settings ***
Library    String
Library    RequestsLibrary
Library    Collections
Resource    ../resource/geral.resource
Resource    ../resource/login_adm.resource

*** Variables ***

*** Keywords ***
Criar Diretoria
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable    ${DIRETORIA_NOME}    ${palavra_randomica}
    Log    ${DIRETORIA_NOME}

Cadastrar Nova Diretoria
    ${body}    Create Dictionary     boardName=${DIRETORIA_NOME}
    Log    ${body}
    Criar Sessão
    Entrar com usuário administrador
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    POST On Session    alias=blackList    url=/api/board/    json=${body}    headers=${headers}   expected_status=201
    Log    ${resposta.json()}
    Set Test Variable    ${RESPOSTA}    ${resposta.json()}

Verificar Cadastro de Diretoria
    Log    ${RESPOSTA}
    Dictionary Should Contain Item    ${RESPOSTA}    msg    Cadastro realizado com sucesso!
    Status Should Be    201


##### CASOS DE EXCEÇÃO #####

Criar Diretoria Sem Nome
    ${body}    Create Dictionary     boardName=
    Log    ${body}
    Criar Sessão
    Entrar com usuário administrador
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    POST On Session    alias=blackList    url=/api/board/    json=${body}    headers=${headers}   expected_status=400
    Log    ${resposta.json()}
    Should Be Equal As Strings    ${resposta.status_code}    400
    Should Be Equal As Strings    ${resposta.json()['error']}    ["O campo 'diretoria' é obrigatório."]

Criar Diretoria com Numeros
    ${body}    Create Dictionary     boardName=123456
    Log    ${body}
    Criar Sessão
    Entrar com usuário administrador
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    POST On Session    alias=blackList    url=/api/board/    json=${body}    headers=${headers}   expected_status=400
    Log    ${resposta.json()}
    Should Be Equal As Strings    ${resposta.status_code}    400
    Should Be Equal As Strings    ${resposta.json()['error']}    ["O campo 'diretoria' só pode conter letras e o caractere especial '&'."]

Criar Diretoria com Caracter Especial
    ${body}    Create Dictionary     boardName=@#$%/ªº
    Log    ${body}
    Criar Sessão
    Entrar com usuário administrador
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    POST On Session    alias=blackList    url=/api/board/    json=${body}    headers=${headers}   expected_status=400
    Log    ${resposta.json()}
    Should Be Equal As Strings    ${resposta.status_code}    400
    Should Be Equal As Strings    ${resposta.json()['error']}    ["O campo 'diretoria' só pode conter letras e o caractere especial '&'."]

Criar Diretoria com Mais de 50 caracteres
    ${body}    Create Dictionary     boardName=Sol&Luz&Mar&Montanha&Floresta&Planície&Estrela&Lua&Sol&Luz&Mar&Montanha&Floresta&Planície&Estrela&Lua
    Log    ${body}
    Criar Sessão
    Entrar com usuário administrador
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    POST On Session    alias=blackList    url=/api/board/    json=${body}    headers=${headers}   expected_status=400
    Log    ${resposta.json()}
    Should Be Equal As Strings    ${resposta.status_code}    400
    Should Be Equal As Strings    ${resposta.json()['error']}    ["O campo 'diretoria' deve possuir no máximo 50 caracteres."]

Criar Diretoria Sem Token
    ${body}    Create Dictionary     boardName=${DIRETORIA_NOME}
    Log    ${body}
    Criar Sessão
    Entrar com usuário administrador
    ${headers}    Create Dictionary    Authorization=
    ${resposta}    POST On Session    alias=blackList    url=/api/board/    json=${body}    headers=${headers}   expected_status=403
    Log    ${resposta.json()}
    Should Be Equal As Strings    ${resposta.status_code}    403
    Should Be Equal As Strings    ${resposta.json()['errors']}    ['No token provided.']

 Diretoria já Cadastrada
    ${body}    Create Dictionary     boardName=mqdrosjd
    Log    ${body}
    Criar Sessão
    Entrar com usuário administrador
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    POST On Session    alias=blackList    url=/api/board/    json=${body}    headers=${headers}   expected_status=409
    Log    ${resposta.json()}
    Should Be Equal As Strings    ${resposta.status_code}    409
    Should Be Equal As Strings    ${resposta.json()['alert']}    ['Não é possível salvar esse registro. Diretoria já cadastrada no sistema.']

Criar Diretoria Erro Not Found
    ${body}    Create Dictionary     boardName=mqdrosjd
    Log    ${body}
    Criar Sessão
    Entrar com usuário administrador
    ${headers}    Create Dictionary    Authorization=${TOKEN}
    ${resposta}    POST On Session    alias=blackList    url=/api/board/count   json=${body}    headers=${headers}   expected_status=404
    Should Be Equal As Strings    ${resposta.status_code}    404
   








