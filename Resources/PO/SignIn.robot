*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =    xpath=//h1
${SIGNIN_EMAIL_INPUT} =    css=#ap_email
${SIGNIN_EMAIL_BUTTON} =    xpath=//*[@id="continue"]
${SIGNIN_PASSWORD_INPUT} =    css=#ap_password
${SIGNIN_PASSWORD_BUTTON} =    xpath=//*[@id="signInSubmit"]

*** Keywords ***
Verify SignIn Page Loaded
    Page Should Contain Element  ${SIGNIN_MAIN_HEADING}

Login With Valid Credentials
    [Arguments]    ${Email}    ${Password}
    Fill "Email" Field    ${Email}
    Fill "Password" Field    ${Password}
    Click "Sign In" Button

Fill "Email" Field
    [Arguments]    ${Email}
    input text     ${SIGNIN_EMAIL_INPUT}   ${Email}
    log    filling email field with ${Email}

Click "Email" Button
    click button    ${SIGNIN_EMAIL_BUTTON}

Fill "Password" Field
    [Arguments]    ${Password}
    input text    ${SIGNIN_PASSWORD_INPUT}   ${Password}
    log    filling password field with ${Password}

Click "Sign In" Button
    click button    ${SIGNIN_PASSWORD_BUTTON}
    log    clicking submit button



