*** Settings ***
Library  SeleniumLibrary
Variables  ./locators.py
Library  SeleniumLibrary

*** Variables ***
${url1}   https://demowebshop.tricentis.com/
${url2}   https://testautomationpractice.blogspot.com/
${login url}     https://demowebshop.tricentis.com/login

#${browser}  Chrome

*** Keywords ***
launching url
    [Arguments]  ${browser}
#    Open Browser    ${url1}  ${browser}
#    Maximize Browser Window
    Open browser    ${login url}  ${browser}
#    Maximize Browser Window
Click on Register
    Click Element  ${register_link}
#Click Gender
#    click element   ${register_locate_gender}
Click gender
    Select Radio Button    Gender    M
#    Select Radio Button    Gender    F
Enter Firstname
    [Arguments]  ${firstname}
    input text   ${register_locate_firstname}  ${firstname}
Enter Lastname
    [Arguments]  ${lastname}
    input text   ${register_locate_lastname}  ${lastname}
Enter Email
    [Arguments]  ${email}
    input text   ${register_locate_email}  ${email}
Enter Password
    [Arguments]  ${passwd}
    Input Text   ${register_locate_password}  ${passwd}
Confirm passwrd
    [Arguments]  ${confirm_passwd}
    input text    ${register_locate_cfnpasswd}  ${confirm_passwd}
Confirm Register
    Click Element  ${register_button}


