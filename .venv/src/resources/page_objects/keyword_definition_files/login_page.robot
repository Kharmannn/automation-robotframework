*** Settings ***
Library  SeleniumLibrary
Variables  ../locators/locators.py
Variables  ../test_data/testdata.py

*** Keywords ***
Input Username
    Input Text  ${LoginUsernameInputBox}  ${Username}

Input Password
    Input Text  ${LoginPasswordInputBox}  ${Password}

Click Login
    Click Element  ${LoginButton}