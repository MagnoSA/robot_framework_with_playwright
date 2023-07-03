*** Keywords ***
Login
    [Arguments]  ${USERNAME}  ${PASSWORD}
    New Page    ${URL}
    Type Text   css=input[id="username"]    ${USERNAME}
    Type Text   css=input[id="password"]    ${PASSWORD}
    Click       xpath=//*[@id="login"]/button