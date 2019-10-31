*** Settings ***
Test Setup       Open browser to login page
Test Template    Login with invalid credentials should fail
Test Teardown    Close browser
Resource         resource.robot

*** Test Cases ***    USERNAME    PASSWORD
Invalid username      invalid     mode
Invalid password      demo        invalid
Both invalid          invalid     invalid
Empty username        ${EMPTY}    mode
Empty password        demo        ${EMPTY}
Both empty            ${EMPTY}    ${EMPTY}

*** Keywords ***
Login with invalid credentials should fail
    [Arguments]    ${username}    ${password}
    Type in username    ${username}
    Type in password    ${password}
    Submit credentials
    Error page should be open
