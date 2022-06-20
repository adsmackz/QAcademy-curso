*** Keywords ***
Login with
        [Arguments]                          ${uame}     ${pass}    
        
         Input Text                          css:input[name=username]        ${uame} 
         Input Text                          css:input[name=password]        ${pass}
         Click Element                       Class:btn-login

Alert
        [Arguments]                          ${alert_message}   

        ${message}=                         Get WebElement                   id:flash
        Should Contain                      ${message.text}                  ${alert_message} 