*** Settings ***
Documentation    This is some basic information about whole suite
Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot
Suite Setup    Insert Testing Data
Test Setup    Common.Begin Web Test
Test Teardown   Common.End Web Test
Suite Teardown    Cleanup Testing Data

*** Variables ***
${BROWSER} =    Edge
${START_URL} =    http://www.amazon.com
${SEARCH_TERM} =    Monkey.D.Luffy
${LOGIN_EMAIL} =    ontninjao@gmail.com
${LOGIN_PASSWORD} =    Daytitan@3

*** Test Cases ***
Logged out user go to Amazon
    [Documentation]    This is some basic information about the test 1
    [Tags]    Smoke
    AmazonApp.Go To Amazon

Logged out user can search for products
    [Documentation]    This is some basic information about the test 2
    [Tags]    Smoke
    AmazonApp.Go To Amazon
    AmazonApp.Search For Products

Logged out user can view a product
    [Documentation]    This is some basic information about the test 3
    [Tags]    Smoke
    AmazonApp.Go To Amazon
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results

Logged out user can add product to cart
    [Documentation]    This is some basic information about the test 4
    [Tags]    Smoke
    AmazonApp.Go To Amazon
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user must sign in to check out
    [Documentation]    This is some basic information about the test 5
    [Tags]    Smoke
    AmazonApp.Go To Amazon
    AmazonApp.Search For Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout


