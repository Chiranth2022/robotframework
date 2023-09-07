*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}   https://www.saucedemo.com/v1/inventory.html
${browser}  Chrome
${count} =  Get matching xpath count    xpath://div[@class='inventory_item']


*** Test Cases ***
findelements
    launching url
    ${wait_time}  Get Selenium Implicit Wait
    Set Selenium Implicit Wait    10
    Log To Console    ${count}
    Log To Console    ${wait_time}
#        IF  ${count} >5   keyword1  ELSE IF  ${count} <5  keyword2  ELSE  Log To Console   equal to expected value

*** Keywords ***
launching url
    Open Browser    ${url}  ${browser}






