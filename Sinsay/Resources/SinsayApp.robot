*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/PO/StartPage.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/SearchResult.robot
Resource    ../Resources/PO/Product.robot
Resource    ../Resources/PO/Cart.robot
Resource    ../Resources/PO/SignIn.robot
Resource  ../Resources/PO/ExpandedMenu.robot
Resource  ../Resources/PO/SearchResults.robot


*** Keywords ***
Navigate to Landing Page
    StartPage.Navigate To Start URL
    StartPage.Accept Cookies
    StartPage.Select Country

Verify Landing Page loaded correctly
    LandingPage.Verify Logo Loaded
    LandingPage.Verify Search Field Loaded
    LandingPage.Verify Account Icon Loaded
    LandingPage.Verify Shopping Cart Icon Loaded
    LandingPage.Verify category banner Loaded    ${KOBIETA}
    LandingPage.Verify category banner Loaded    ${MEZCZYZNA}
    LandingPage.Verify category banner Loaded    ${DZIECKO}
    LandingPage.Verify category banner Loaded    ${NIEMOWLE}
    LandingPage.Verify category banner Loaded    ${DOM}

Check if Landing Page main categories are interactible
    LandingPage.Verify Category displays after mouse over    ${KOBIETA}
    LandingPage.Verify Category displays after mouse over    ${MEZCZYZNA}
    LandingPage.Verify Category displays after mouse over    ${DZIECKO}
    LandingPage.Verify Category displays after mouse over    ${NIEMOWLE}
    LandingPage.Verify Category displays after mouse over    ${DOM}

Verify category banner leads to proper site
    LandingPage.Verify category banner leads to proper site    ${KOBIETA}
    LandingPage.Verify category banner leads to proper site    ${MEZCZYZNA}
    LandingPage.Verify category banner leads to proper site    ${DZIECKO}
    LandingPage.Verify category banner leads to proper site    ${NIEMOWLE}
    LandingPage.Verify category banner leads to proper site    ${DOM}

Verify a click on product group leads to correct results
    LandingPage.Verify Category displays after mouse over    ${KOBIETA}
    ExpandedMenu.Verify a click on product group leads to correct results    ${SUKIENKI}

Verify Search Option works correctly
    SearchResults.Verify Search query returns correct results    ${SUKIENKA}
    SearchResults.Verify Search query returns correct results    ${JEANSY}

Search
    SearchResults.Search


#Login
#    [Arguments]    ${Username}    ${Password}
#    SignIn.Login with valid credentials    ${Username}    ${Password}
#
#Login with invalid credentials
#    SignIn.Fill "Email" Field  bogdan@bogdan.com
#    SignIn.Fill "Password" Field    abcd1
#    SignIn.Click Submit Button
#
#Search for Products
#    LandingPage.Navigate To URL
#    LandingPage.Verify Page Loaded
#    TopNav.Search for Products
#    SearchResult.Verify Search Completed
#
#Select Product from Search Results
#   SearchResult.Click Product Link
#   Product.Results Loaded
#
#Add Product to cart
#    Product.Click Add to cart
#    Cart.Page contains Added to Cart
#
#Begin Checkout
#    Cart.Continue to Checkout
#    SignIn.Verify Page Loaded

