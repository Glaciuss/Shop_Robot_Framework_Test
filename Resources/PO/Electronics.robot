*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ELECTRONICS_NAME} =    Electronics
${ELECTRONICS_VERIFY} =    SHOP BY CATEGORY

*** Keywords ***
Get Electronics
    Enter Image
    Verify Electronics Page Loaded

Enter Image
    click image    ${ELECTRONICS_NAME}

Verify Electronics Page Loaded
    wait until page contains    ${ELECTRONICS_VERIFY}