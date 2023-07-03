*** Settings ***
Resource    login_base.robot

Suite Setup  New Browser  browser=${BROWSER}

Force Tags  @login

*** Test Cases ***
Login
    [Tags]  @login
    Login  ${USERNAME}  ${PASSWORD}
    Get Text  id=flash  *=  ${MSG_LOGIN_SUCCESS}
    Take Screenshot

Username Invalid
    [Tags]  @login
    Login  Test123  ${PASSWORD}
    Get Text  id=flash  *=  ${MSG_USERNAME_INVALID}
    Take Screenshot
    
Password Invalid
    [Tags]  @login
    Login  ${USERNAME}  Test123
    Get Text  id=flash  *=  ${MSG_PASSWORD_INVALID}
    Take Screenshot