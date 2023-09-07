*** Settings ***
Resource    ../pom/register_robot.robot
Resource    ../pom/login_robot.robot
Library  SeleniumLibrary

*** Variables ***
${n}=   7

*** Test Cases ***
register
    launching url  Chrome
#    ${speed}=  Get Selenium Speed
#    Log To Console    ${speed}
    Set Selenium Speed    0.5 seconds
    Click on Register
    Wait Until Page Contains Element    id:ConfirmPassword
#    Set Selenium Timeout    0 seconds
    Click Gender
    Enter Firstname    Chiru
    Enter Lastname    chi
    Enter Email    chiru22py@gmail.com
    Enter Password    Python@2023
    Confirm passwrd    Python@2023
    Confirm Register
    ${speed}=  Get Selenium Speed
    Log To Console    ${speed}
    Wait Until Page Contains    Your registration completed
    Click Element    xpath://input[@value='Continue']

login
    open on login
    Enter registerd username    chiru22py@gmail.com
    Enter registerd password    Python@2023
    Click login button


counts
    launching url    Chrome
    Set Selenium Speed    .3 seconds
#    Click Link    Books

#    ${counts}=   SeleniumLibrary.Get Element Count  xpath://div[@class='product-item']
#    Log To Console    ${counts}
#    ${range}    Set Variable  1    # try once again didnt work as of now
#    WHILE    ${range}<=${counts}
#         ${ele}=    Get Element Text    xpath:(//div[@class='product-item'])[${range}]
#         Log To Console    ${ele}
#         ${range}+=  1
#    END
#    Select Radio Button    pollanswers-1    1 # to select from radio buttons
#    Select Radio Button    pollanswers-1    2
#    Select Radio Button    pollanswers-1    3
#    Select Radio Button    pollanswers-1    4

window handle
    launching url    Chrome
#    Set Selenium Speed    .2 seconds
    Close All Browsers

alerts handle
    launching url    Chrome
#    Set Selenium Speed    .2 seconds
    Wait Until Page Contains    Automation Testing Practice
    # wait statements used when network is slow or untill the element is found
    Wait Until Page Contains Element    xpath://button[text()='Confirm Box']
    Click Element    xpath://button[text()='Confirm Box']
    Handle Alert    accept
    Click Element    xpath://button[text()='Confirm Box']
    Handle Alert    dismiss
    Click Element    xpath://button[text()='Confirm Box']
    Alert Should Be Present     Press a button!
    Click Element    xpath://button[text()='Confirm Box']
    Handle Alert    leave


frames handling
    launching url    Chrome
#    Go To    https://foundit.com
#    Go Back
#    sleep  2 seconds
    Select Frame    id:frame-one796456169
    Input Text    id:RESULT_TextField-0    chiru
    Click Element    xpath://label[@for='RESULT_RadioButton-1_0']


for loop

    FOR    ${d}    IN RANGE    0    10    2    # using range in for loop
        IF    ${d} > 7
            Exit For Loop
        END
        Log To Console    ${d}
    END
    ${data}    Create List     1  2  3  5  7  8   9   3   # create list of strings
    @{data}    Create List     1  2  3  5  7  8   9   3    # create list of numbers

    FOR    ${d}    IN    @{data}
        Log To Console   ${d}
    END

    FOR    ${name}    IN    john  scott  smith
        Log To Console    ${name}
    END
    FOR    ${index}    ${name}    IN ENUMERATE    @{data}  # using enumerate in for loop
        Log To Console    ${name}: ${index}
    END

