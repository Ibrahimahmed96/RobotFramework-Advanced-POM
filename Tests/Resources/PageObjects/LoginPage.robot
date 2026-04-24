*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USER_FIELD}        id=user-name
${PASS_FIELD}        id=password
${LOGIN_BTN}         id=login-button

*** Keywords ***
Navigate To Login Page
    Wait Until Element Is Visible    ${USER_FIELD}    timeout=10s

Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text     ${USER_FIELD}    ${username}
    Input Text     ${PASS_FIELD}    ${password}
    Click Button    ${LOGIN_BTN}
