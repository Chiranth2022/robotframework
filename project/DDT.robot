*** Settings ***
Resource    ../pom/register_robot.robot
Resource    ../pom/login_robot.robot
Library  SeleniumLibrary
Suite Setup     launching url    headlesschrome   # suite for DDT in Diffrent way
Suite Teardown   Close All Browsers
Test Template   invalid login
#Test Template    Valid Login


*** Test Cases ***
right username empty pwd    chiru22py@gmail.com     ${EMPTY}
empty username rigt pwd     ${EMPTY}    Python@2023
right username wrong pwd    chiru22py@gmail.com     python@20
wrong username right pwd    chiru22@gmail.com   Python@2023
wrong username wrong pwd    chiru22@gmail.com   python@20
wrong username empty pwd    python@gamil.com    ${EMPTY}

#right username right pwd    chiru22py@gmail.com     Python@2022


*** Keywords ***
invalid login
    [Arguments]     ${username}    ${password}
    Enter registerd username     ${username}
    Enter registerd password    ${password}
    Click login button
    Error message visible

#valid login
#    [Arguments]     ${username}    ${password}
#    Enter registerd username     ${username}
#    Enter registerd password    ${password}
#    Click login button
#    Wait Until Page Contains    chiru22py@gmail.com
#    Success Message Visible
