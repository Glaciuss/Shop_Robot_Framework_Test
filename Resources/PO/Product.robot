*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PRODUCT_VERIFY} =    Add to Cart
${PRODUCT_BUTTON} =    id=add-to-cart-button

*** Keywords ***
Verify Products Page Loaded
    wait until page contains    ${PRODUCT_VERIFY}

Add to Cart
    click button    ${PRODUCT_BUTTON}