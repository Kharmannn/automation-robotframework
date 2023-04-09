*** Settings ***
Documentation  Page Object in Robot Framework
Library  AppiumLibrary
Resource  ../resources/page_objects/keyword_definition_files/login_page.robot

*** Test Cases ***
Verify Successful Login to Facebook Lite
    # [documentation]  This test case verifies that the user is able to successfully Login and Logout to Facebook lite application
    # [tags]  Smoke
    Open Test Application
    Wait Until Element Is Visible    com.android.permissioncontroller:id/content_container
    Auto Grant
    Insert Username
    Insert Password
    Click Login Button