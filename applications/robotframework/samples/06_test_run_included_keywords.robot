*** Settings ***
Documentation     An example resource file
Library           SeleniumLibrary
Resource          ${RESOURCES}/common.resource

*** Variables ***
${HOST}           localhost:7272
${LOGIN URL}      http://${HOST}/
${WELCOME URL}    http://${HOST}/welcome.html
${BROWSER}        Firefox

*** Keywords ***

Example
   IF    ${rc} > 0
       Some keyword
       Another keyword
   END

Example
    IF    ${rc} > 0
        Some keyword
    ELSE
        Another keyword
    END

Arithmetic
    [Documentation]    Arithmetic with variable
    FOR    ${index}    IN RANGE    ${var} + 1
        Log    ${index}
    END
Open Login Page
    [Documentation]    Opens browser to login page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Login Page

Input Name
    [Arguments]    ${name}
    Input Text    username_field    ${name}

Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${password}