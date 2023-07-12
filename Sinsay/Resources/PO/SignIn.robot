*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=//h1
*** Keywords ***
Verify Page Loaded
    page should contain element    ${SIGNIN_MAIN_HEADING}

Login with valid credentials
    [Arguments]    ${Username}    ${Password}
    Fill "Email" Field    ${Username}
    Fill "Password" Field    ${Password}
    Click Submit Button


Fill "Email" Field
    [Arguments]    ${Username}
    Log    Filling email field with ${Username}

Fill "Password" Field
    [Arguments]    ${Password}
    Log    Filling email field with ${Password}

Click Submit Button
    Log    Clicking submit button