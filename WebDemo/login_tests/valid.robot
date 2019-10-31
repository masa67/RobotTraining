*** Settings ***
Documentation    Documentation for this test suite
...              Can be split to multiple lines.
...              Supports *formatting* etc.
Resource         resource.robot
Library          SeleniumLibrary

*** Test Cases ***
Valid login
    Open browser to login page
    Type in username    demo
    Type in password    mode
    Submit credentials
    Welcome page should be open
    [Teardown]    Close browser
