
# Este repositório contém um projeto de automação de testes de API utilizando o Robot Framework.

## Descrição

Este projeto foi desenvolvido durante a Academy oferecida pela QA Coders, com o objetivo de aplicar na prática os conhecimentos adquiridos em automação de testes utilizando o Robot Framework.

O objetivo é a automação de testes de API para validar a criação de departamentos de diretoria em um sistema específico. Os testes implementados cobrem uma variedade de cenários de validação, garantindo que a API se comporte corretamente tanto em casos positivos quanto negativos.

## Tecnologias Utilizadas

- **Robot Framework**: Framework para automação de testes.

- **RequestsLibrary**: Biblioteca para testes de API HTTP.

- **Faker**: Biblioteca para geração de dados dinâmicos como nomes, e-mails e CPFs.

- **Python**: Linguagem utilizada para criar funções auxiliares que geram dados de teste.

## Pré-requisitos

- Python (3.13.0)
- Pip (gerenciador de pacotes do Python)
- Navegador web (Chrome)
- WebDriver correspondente (ChromeDriver)
- Bibliotecas: (SeleniumLibrary, Collections).
- Ferramentas:  (virtualenv).

## Instalação e Configuração

1\. Clone este repositório:

   ```bash

   git clone (endereço do repositório)

   ```

2\. Acesse o diretório do projeto:

   ```bash

   cd seu-repositorio

   ```

3\. Instale as dependências do Python:

   ```bash

   pip install -r requirements.txt
  
## Como Executar os Testes

Para executar todos os testes de uma vez:

```bash

robot tests/

``
Para instalar as dependências, utilize:

```bash

pip install -r requirements.txt

```
## Executando a Pipeline com GitHub Actions

Este projeto está configurado para ser integrado ao GitHub Actions, onde os testes são automaticamente executados em cada push ou pull request. Certifique-se de que os testes estejam passando antes de enviar suas alterações para o repositório remoto.

## Licença

Este projeto é distribuído sob a licença MIT. Consulte o arquivo `LICENSE` para obter mais informações.

---

Esse `README.md` serve como uma documentação completa para desenvolvedores que desejam entender e contribuir com o projeto, incluindo desde a instalação até a execução dos testes e a integração contínua com GitHub Actions. Certifique-se de personalizar detalhes como URLs e nomes de repositórios antes de usar.
