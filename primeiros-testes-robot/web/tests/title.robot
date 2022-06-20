*** Settings ***
Resource         1base.robot 

Test Setup      Nova sessão
Test Teardown   Encerra sessão


*** Test Cases ***
Validar titulo
   Title Should Be      Training Wheels Protocol
  
 