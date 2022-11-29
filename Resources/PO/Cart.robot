*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CART_VERIFY} =   Added to Cart
${CART_lINK} =    xpath=//*[@id="sw-gtc"]/span/a

*** Keywords ***
Verify Product Added
    wait until page contains    ${CART_VERIFY}

Proceed to Checkout
    Click Element    ${CART_lINK}