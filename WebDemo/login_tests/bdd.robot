*** Settings ***
Test Teardown    Close browser
Resource         resource.robot

*** Test Cases ***
Valid login
    Given browser is opened to login page
    When user "demo" logs in with password "mode"
    Then Welcome page should be open

*** Keywords ***
Browser is opened to login page
    Open browser to login page

User "${username}" logs in with password "${password}"
    Type in username    ${username}
    Type in password    ${password}
    Submit credentials

