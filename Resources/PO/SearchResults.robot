*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SEARCH_LINK} =    xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[4]/div/div/div/div/div[1]/span/a/div/img
${SEARCH_VERIFY} =    results for "${SEARCH_TERM}"
*** Keywords ***
Verify Search Completed
    wait until page contains    ${SEARCH_VERIFY}

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Element    ${SEARCH_LINK}
