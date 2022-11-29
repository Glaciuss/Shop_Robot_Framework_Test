*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LANDING_VERIFY} =    Gift Cards

*** Keywords ***
Load and Verify
    Load
    Verify Amazon Page Loaded

Load
    go to    ${START_URL}

Verify Amazon Page Loaded
    wait until page contains    ${LANDING_VERIFY}