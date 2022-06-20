*** Settings ***
Resource         1base.robot 

Test Setup      Nova sessão
Test Teardown   Encerra sessão


** Variables ***
${check_thor}       id:thor 
${check_iron}       css:input[value='iron-man'] 
${check_panter}     xpath://*[@id='checkboxes']/input[7]
${check_guard}      xpath://*[@id="checkboxes"]/input[5] 


*** Test Cases ***
Marcar opcão com ID
   Go to                               ${url}/checkboxes
   Select Checkbox                     ${check_thor} 
   Checkbox Should Be Selected         ${check_thor} 
   
   
Marcando com opção com CSS Selector
   Go to                               ${url}/checkboxes
   Select Checkbox                     ${check_iron}
   Checkbox Should Be Selected         ${check_iron}
    
Marcando com opção com Xpath
  Go to                               ${url}/checkboxes
  Select Checkbox                     ${check_panter} 
  Checkbox Should Be Selected         ${check_panter} 
   
       
Outros com opção com Xpath
  Go to                               ${url}/checkboxes
  Select Checkbox                     ${check_guard} 
  Checkbox Should Be Selected         ${check_guard} 
