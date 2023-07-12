*** Settings ***
Resource    ../Resources/SinsayApp.robot
Resource    ../Resources/Common.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test
Resource    ../Resources/Common.robot
Resource    ../Resources/SinsayApp.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

*** Variables ***
${BROWSER} =    chrome
${START_URL} =    http://sinsay.com

*** Test Cases ***
#Verify main page is loaded correctly
#    SinsayApp.Navigate to Landing Page
#    SinsayApp.Verify Landing Page loaded correctly
#    SinsayApp.Check if Landing Page main categories are interactible
#    SinsayApp.Verify category banner leads to proper site

#Verify a click on product group from expanded menu leads to correct results
#    SinsayApp.Navigate to Landing Page
#    SinsayApp.Verify Landing Page loaded correctly
#    SinsayApp.Verify a click on product group leads to correct results

Verify Search Option works correctly
    SinsayApp.Navigate to Landing Page
    SinsayApp.Verify Landing Page loaded correctly
    SinsayApp.Verify Search Option works correctly
    #SinsayApp.Search

#User should be able to login
    #SinsayApp.Login    ${LOGIN_EMAIL}    ${LOGIN_PASSWORD}

#Logged out user can search for products
    #[Tags]    Smoke
    #SinsayApp.Search for Products

#Logged out user can view a product
#    [Tags]    Smoke
#    SinsayApp.Search for Products
#    SinsayApp.Select Product from Search Results

#Logged out user can add product to cart
#    [Tags]    Current
#    SinsayApp.Search for Products
#    SinsayApp.Select Product from Search Results
#    SinsayApp.Add Product to cart
#    SinsayApp.Begin Checkout
