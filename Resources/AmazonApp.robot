*** Settings ***
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/SearchResults.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/Electronics.robot

*** Keywords ***
Email
    [Arguments]    ${Email}
    SignIn.Fill "Email" Field   ${Email}
    SignIn.Click "Email" Button
Password
    [Arguments]    ${Password}
    SignIn.Fill "Password" Field  ${Password}
    SignIn.Click "Sign In" Button

Login
    [Arguments]    ${Email}    ${Password}
    SignIn.Login With Valid Credentials    ${Email}    ${Password}

Login With Invalid Credentials
    SignIn.Fill "Email" Field    alisarmusa@yahoo.com
    SignIn.Fill "Password" Field    miamiHeat2020
    SignIn.Click "Sign In" Button

Go To Amazon
    LandingPage.Load and Verify

Search For Products
    TopNav.Search for Products
    SearchResults.Verify Search Completed
    
Select Product from Search Results
    SearchResults.Click Product Link
    Product.Verify Products Page Loaded

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify SignIn Page Loaded

Back Home
    Home.Return Home

Choose Electronics
    Electronics.Get Electronics

