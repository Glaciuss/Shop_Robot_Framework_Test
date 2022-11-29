*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    open browser    about:blank    ${BROWSER}
    
End Web Test
    sleep    3s
    close browser

Insert Testing Data
    log    I am setting up the test data...
    Custom Keyword 1
    Custom Keyword 2

Cleanup Testing Data
    log    I am cleaning up the test data...

Custom Keyword 1
    log    Doing keyword 1...

Custom Keyword 2
    log    Doing keyword 2...