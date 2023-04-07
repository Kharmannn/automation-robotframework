*** Settings ***
Documentation  Page Object in Robot Framework
Library  SeleniumLibrary
Resource  ../resources/page_objects/keyword_definition_files/login_page.robot

*** Variables ***
${site_url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome

*** Test Cases ***
Verify Successful Login to OrangeHRM
    [documentation]  This test case verifies that the user is able to successfully Login and Logout to OrangeHRM using Page Object
    [tags]  Smoke
    Open Browser  ${site_url}  ${browser}
    Input Username
    # Input Password
    # Click Login
    # Close Browser

*** Keywords ***