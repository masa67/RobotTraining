*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${LOGIN URL}    http://localhost:7272
${BROWSER}      Chrome

*** Keywords ***
Open browser to login page
    Open browser    ${LOGIN URL}    ${BROWSER}
    Title should be    Login Page

Type in username
    [Arguments]    ${username}
    Input text    username_field    ${username}

Type in password
    [Arguments]    ${password}
    Input password    password_field    ${password}

Submit credentials
    Click button    login_button

Welcome page should be open
    Title should be    Welcome Page
    ${title} =    Get Title
    Should be equal    ${title}    Welcome Page

Error page should be open
    Title should be    Error Page
