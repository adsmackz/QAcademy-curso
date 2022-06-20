*** Settings ***
Resource         1base.robot 
Resource         2Keywords.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


*** Test Cases ***
Login com sucesso
    Go to                               ${url}/login
    Login with                          stark       jarvis!
                      
    Page Should Contain                 Olá, Tony Stark. Você acessou a área logada!

Senha invalida
    
    Go to                               ${url}/login
    Login with                          stark        123456
    Alert                               Senha é invalida!
    
Usuario invalida
    
    Go to                               ${url}/login
    Login with                          Junior        123456
    Alert                               O usuário informado não está cadastrado!

