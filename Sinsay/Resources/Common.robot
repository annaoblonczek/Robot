*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    open browser    about:blank    ${BROWSER}
    Maximize Browser Window

End Web Test
    close browser