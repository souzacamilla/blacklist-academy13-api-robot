*** Settings ***

Resource    ../resource/criar_diretoria.resource

*** Test Cases ***
CT01 Criar Diretoria
    Criar Sessão 
    Entrar com usuário administrador
    Criar Diretoria
    Cadastrar Nova Diretoria
    Verificar Cadastro de Diretoria
    

CT02 Criar Diretoria Sem Nome
    Criar Sessão 
    Entrar com usuário administrador
    Criar Diretoria Sem Nome


CT03 Criar Diretoria com Numeros
    Criar Sessão 
    Entrar com usuário administrador
    Criar Diretoria com Numeros

CT04 Criar Diretoria com Caracter Especial
    Criar Sessão 
    Entrar com usuário administrador
    Criar Diretoria com Caracter Especial

CT05 Criar Diretoria com Mais de 50 caracteres
    Criar Sessão 
    Entrar com usuário administrador
    Criar Diretoria com Mais de 50 caracteres

CT06 Criar Diretoria Sem Token
    Criar Sessão 
    Entrar com usuário administrador
    Criar Diretoria
    Criar Diretoria Sem Token

 CT07 Diretoria já Cadastrada
    Criar Sessão
    Entrar com usuário administrador
    Criar Diretoria
    Diretoria já Cadastrada

CT08 Criar Diretoria Erro Not Found
    Criar Sessão
    Entrar com usuário administrador
    Criar Diretoria Erro Not Found





