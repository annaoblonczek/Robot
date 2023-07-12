*** Settings ***
Library    SeleniumLibrary

*** Variables ***
&{SUKIENKI} =    PGName=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[2]/ul/li[1]/ul/li[1]/a    PGResultsHeader=Sukienki
*** Keywords ***

Verify a click on product group leads to correct results
    [Arguments]  ${ProductGroup}
    click element    ${ProductGroup.PGName}
    wait until page contains    ${ProductGroup.PGResultsHeader}


