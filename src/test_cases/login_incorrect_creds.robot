*** Settings ***
Documentation  Page Object in Robot Framework
Resource  ../resources/page_objects/keyword_definition_files/login_page.robot

*** Variables ***
${USERNAME}                    akram@koinworks.com
${PASSWORD}                    Qwerty!!!

*** Test Cases ***
Verify Incorrect Login to Facebook Lite
    # [documentation]  This test case verifies that the user is able to successfully Login and Logout to Facebook lite application
    # [tags]  Smoke
    Membuka Aplikasi
    Wait Until Element Is Visible    com.android.permissioncontroller:id/content_container
    Auto Grant
    Sleep    3
    Input Text    ${USERNAME_FIELD}    ${USERNAME}
    Input Text    ${PASSWORD_FIELD}    ${PASSWORD}
    Click Login Button
    Sleep    5
    Auto Grant
    Wait Until Element Is Visible    ${POPUP_WRONG_PWD}
    Click Element    ${BUTTON_OK_WRONG_PWD}