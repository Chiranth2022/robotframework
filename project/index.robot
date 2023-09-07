*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}   https://www.saucedemo.com/v1/inventory.html
${browser}  Chrome
${count}    Get Element Count   xpath://div[@class="inventory_list"]/div

*** Test Cases ***
findelements
    launching url
    Log To Console    ${count}
#        IF  ${count} >5   keyword1  ELSE IF  ${count} <5  keyword2  ELSE  Log To Console   equal to expected value

*** Keywords ***
launching url
    Open Browser    ${url}  ${browser}

keyword1
    Log To Console    got more than expected

keyword2
    Log To Console    got less than expected
    



