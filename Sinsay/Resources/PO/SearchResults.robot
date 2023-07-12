*** Settings ***
Library    SeleniumLibrary
Resource    ./LandingPage.robot
*** Variables ***
${SEARCH_FIELD} =    xpath=/html/body/div[2]/div[1]/div/div[3]/div[2]/div[1]/div[2]/div/div[2]/input
${SEARCH_CLOSE} =    xpath=/html/body/div[2]/div[1]/div/div[3]/div[2]/div/div[1]/div[2]/a[1]
#search inputs:
&{SUKIENKA}    =    inputText=Sukienki    expectedResult=Sukienka
&{JEANSY}     =     inputText=Spodnie     expectedResult=Jeansy

#${x} = [${SUKIENKA}, ${JEANSY}]

*** Keywords ***
Verify Search query returns correct results
    [Arguments]  ${INPUT}
    click element    ${SEARCH_ICON}
    wait until page contains element    ${SEARCH_FIELD}
    #press keys    ${SEARCH_FIELD}    ${INPUT.inputText}
    input text    ${SEARCH_FIELD}    ${INPUT.inputText}
    wait until page contains    ${INPUT.expectedResult}
    wait until page contains element    ${SEARCH_CLOSE}
    click element    ${SEARCH_CLOSE}
    sleep  3s


#Search
#    &{SUKIENKA}    create dictionary    inputText=Sukienki    expectedResult=Sukienka
#    &{JEANSY}      create dictionary     inputText=Spodnie     expectedResult=Jeansy
#    ${list}   create list     &{SUKIENKA} &{JEANSY}
#    FOR    ${Y}    IN    @{list}
#        Verify Search query returns correct results
#    END

#Search
#    &{SUKIENKA}    create dictionary    inputText=Sukienki    expectedResult=Sukienka
#    &{JEANSY}      create dictionary     inputText=Spodnie     expectedResult=Jeansy
#    ${list}    create list    {SUKIENKA} {JEANSY}
#    FOR    ${INPUT}  IN    ${SUKIENKA} ${JEANSY}
#      click element    ${SEARCH_ICON}
#      wait until page contains element    ${SEARCH_FIELD}
#      #press keys    ${SEARCH_FIELD}    ${INPUT.inputText}
#      input text    ${SEARCH_FIELD}    ${INPUT.inputText}
#      wait until page contains    ${INPUT.expectedResult}
#      wait until page contains element    ${SEARCH_CLOSE}
#      click element    ${SEARCH_CLOSE}
#      sleep  3s
#    END
