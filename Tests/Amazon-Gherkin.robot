*** Settings ***
Documentation  These test cases are comprised of 1st level keywords
Resource  ../Resources/Common.robot
Resource  ../Resources/AmazonApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
    Given user is not logged in
    When user searches for products
    Then search results contains relevant products

Logged out user can view a product
    [Tags]  Smoke
    Given user is not logged in
    And user searches for products
    And search results contains relevant products
    And user selects a product from search results
    Then correct product page loads

Logged out user can add product to cart
    [Tags]  Smoke
    Given user is not logged in
    And user searches for products
    And search results contains relevant products
    And user selects a product from search results
    And correct product page loads
    When user adds that product to their cart
    Then the product is present in cart
    
Logged out user must sign in to check out
    [Documentation]  This approach uses first level keywords, and it's clear what's happening under the covers
    [Tags]  Smoke
    Given user is not logged in
    And user searches for products
    And search results contains relevant products
    And user selects a product from search results
    And correct product page loads
    And user adds that product to their cart
    And the product is present in cart
    When user attempts to checkout
    Then the user is required to sign in







