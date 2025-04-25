# Academy-API-RobotFramework

🚧 RobotFramework - Frontend🚧


💻 Sobre o projeto
# Este repositório contém um projeto de automação de testes de API utilizando o Robot Framework.


📄 Projeto desenvolvido como parte da Academy promovida pela QA Coders, com o propósito de aplicar, na prática, os conhecimentos adquiridos em automação de testes utilizando o Robot Framework.


# Projeto de Testes Automatizados com Robot Framework

O objetivo é a automação de testes de API para validar a criação de departamentos de diretoria em um sistema específico. Os testes implementados cobrem uma variedade de cenários de validação, garantindo que a API se comporte corretamente tanto em casos positivos quanto negativos.

## Índice

- [Visão Geral](#visão-geral)
- [Pré-requisitos](#pré-requisitos)
- [Instalação e Configuração](#instalação-e-configuração)
- [Execução dos Testes](#execução-dos-testes)
- [Executando a Pipeline com GitHub Actions](#executando-a-pipeline-com-github-actions)
- [Licença](#licença)

## Visão Geral

O Robot Framework é uma ferramenta de automação de testes que utiliza uma abordagem baseada em palavras-chave, que facilita a escrita de casos de teste de forma legível e estruturada. Através da integração com bibliotecas específicas para requisições HTTP e geração de dados dinâmicos, os testes são capazes de validar diferentes cenários da API, assegurando a qualidade e o funcionamento adequado dos endpoints.
A automação cobre diversos aspectos da API, desde a criação de dados até validações de respostas, contribuindo para um processo de testes mais eficiente, repetível e confiável.

##  Pré-requisitos

- Python (3.13.0)
- Pip (gerenciador de pacotes do Python)
- Bibliotecas: (SeleniumLibrary, Collections).

##  Instalação e Configuração

1. Clone o repositório:
   ```bash
   git clone "endereço do repositório"

2. Acesse o diretório do projeto:
   ```bash
   cd seu-repositorio

3. Instale as dependências do Python:
   ```bash
   pip install -r requirements.txt

## Execução dos Testes

Para executar todos os testes de uma vez:

```bash

robot tests/

```
## Executando a Pipeline com GitHub Actions

Este projeto está configurado para ser integrado ao GitHub Actions, onde os testes são automaticamente executados em cada push ou pull request. Certifique-se de que os testes estejam passando antes de enviar suas alterações para o repositório remoto.

## Licença

Este projeto é distribuído sob a licença MIT. Consulte o arquivo `LICENSE` para obter mais informações.

