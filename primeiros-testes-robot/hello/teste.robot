
*** Settings ***
Library    app.py


*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=        welcome        Junior
    Should Be Equal   ${result}      Olá Junior, bem vindo ao Curso de Robot
