*** Settings ***
Documentation   DataDriver Testing with excel
Library    DataDriver   ../TestData/logindata.xlsx
Library    SeleniumLibrary
Resource    ../pom/register_robot.robot
Resource    ../pom/login_robot.robot
Suite Setup     launching url    headlesschrome
Test Template   invalid login
Suite Teardown   Close All Browsers

*** Test Cases ***
verify login  ${username}   ${password}

*** Keywords ***
invalid login
    [Arguments]     ${username}    ${password}
    Enter registerd username     ${username}
    Enter registerd password    ${password}
#	${temp}=    Set Variable   ${username}   ${password}
#	log to console   ${temp}
    Click login button
    Error message visible