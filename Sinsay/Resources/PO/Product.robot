*** Settings ***
Library    SeleniumLibrary
*** Keywords ***

Results Loaded
    wait until page contains    Back to results

Click Add to cart
    click button    id=add-to-cart-button