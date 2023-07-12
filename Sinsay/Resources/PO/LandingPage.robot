*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGO} =    xpath=//*[@id="headerWrapper"]/div/div[1]/a/img
${SEARCH_ICON} =    xpath=/html/body/div[2]/div[1]/div/div[2]/div/div[3]/div[1]/div
${ACCOUNT_ICON} =    xpath=/html/body/div[2]/div[1]/div/div[2]/div/div[3]/button[1]
${SHOPPING_CART} =    xpath=/html/body/div[2]/div[1]/div/div[2]/div/div[3]/button[2]

#/html/body/div[2]/div[1]/div/div[3]/div[2]/div[1]/div[2]/div/div[2]/input
&{KOBIETA} =    banner=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[2]   hover=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[3]/ul/li[2]    link_placer=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[2]/a    expected_link=https://www.sinsay.com/pl/pl/kobieta
&{MEZCZYZNA} =    banner=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[3]   hover=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[3]/ul/li[2]    link_placer=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[3]/a    expected_link=https://www.sinsay.com/pl/pl/mezczyzna
&{DZIECKO} =    banner=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[4]    hover=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[4]/ul/li[3]    link_placer=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[4]/a    expected_link=https://www.sinsay.com/pl/pl/dziecko
&{NIEMOWLE} =    banner=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[5]    hover=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[5]/ul/li[2]    link_placer=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[5]/a    expected_link=https://www.sinsay.com/pl/pl/niemowle
&{DOM} =    banner=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[6]    hover=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[6]/ul/li[4]    link_placer=xpath=/html/body/div[2]/div[1]/div/div[2]/div/header/div/div/ul/li[6]/a    expected_link=https://www.sinsay.com/pl/pl/dom

*** Keywords ***
Verify Logo Loaded
    wait until page contains element    ${LOGO}
Verify Search Field Loaded
    wait until page contains element    ${SEARCH_ICON}
Verify Shopping Cart Icon Loaded
    wait until page contains element    ${SHOPPING_CART}
Verify Account Icon Loaded
    wait until page contains element    ${ACCOUNT_ICON}

Verify category banner Loaded
    [Arguments]  ${Category}
    wait until page contains element    ${Category.banner}

Verify Category displays after mouse over
    [Documentation]    After mouse over on category banner (ex. Kobieta), list of clothes subcategories should appear
    [Arguments]  ${Category}
    mouse over    ${Category.banner}
    wait until page contains element    ${Category.hover}

Verify category banner leads to proper site
    [Arguments]  ${Category}
    wait until page contains element    ${Category.link_placer}
    element attribute value should be    ${Category.link_placer}    href   ${Category.expected_link}


