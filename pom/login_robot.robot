*** Settings ***
Library  SeleniumLibrary
Variables  ./locators.py
Library     SeleniumLibrary


*** Keywords ***
open on login
    Click Element    ${login_link}
Enter registerd username
    [Arguments]   ${username}
    Input Text    ${login_username}   ${username}
Enter registerd password
    [Arguments]   ${password}
    Input Text    ${login_password}    ${password}
Click login button
    Click Element   ${login_button}
Error message visible
    Page Should Contain    Login was unsuccessful.
Success message visible
	Page Should Contain    chiru22py@gmail.com


