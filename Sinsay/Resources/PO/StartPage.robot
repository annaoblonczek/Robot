*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${COOKIES_BANNER} =    id=cookiebotDialogOkButton
${COUNTRY} =    Polska / Poland
${COUNTRY_LINK} =    xpath=//html/body/main/ul/li[12]/a
*** Keywords ***
Navigate To Start URL
        go to    ${START_URL}

Accept Cookies
    click button    ${COOKIES_BANNER}

Select Country
    wait until page contains    ${COUNTRY}
    click link    ${COUNTRY_LINK}
