*** Settings ***
Library    AppiumLibrary

*** Variables ***
${ANDROID_AUTOMATION_NAME}    Uiautomator2
${REMOTE_URL}                 http://localhost:4723/wd/hub
${PLATFORM_NAME}              Android
${PLATFORM_VERSION}           11
${DEVICE_NAME}                emulator-5556
${PACKAGE_NAME}               com.facebook.lite
${APP_ACTIVITY}               com.facebook.lite.MainActivity
${APP_LOCATION}               /home/koinworks/Personal/project/automation-robotframework/src/apk/facebook_lite.apk

#*** Main Page ***
${DENY_BUTTON}                xpath=//android.widget.Button[@text='Deny']
${USERNAME_FIELD}             xpath=//android.widget.MultiAutoCompleteTextView[@index = 2]
${PASSWORD_FIELD}             xpath=//android.widget.MultiAutoCompleteTextView[@index = 4]
${LOGIN_BUTTON}               xpath=//android.view.ViewGroup[@index = 5]
${SAVE_LOGIN_INFO_PAGE}       xpath=//android.widget.FrameLayout[@resource-id='com.facebook.lite:id/main_layout']            
${BUTTON_NOT_NOW}             xpath=//android.view.ViewGroup[@index = 4]
${POPUP_WRONG_PWD}            xpath=//android.view.ViewGroup[@index = 0 and @clickable='true' and @checkable='false' and @checked='false']
${BUTTON_OK_WRONG_PWD}        xpath=//android.view.ViewGroup[@index = 2 and @clickable='true']

#*** Credentials ***
${USERNAME}                    alvis.bebewash@gmail.com
${PASSWORD}                    bebewash123

*** Keywords ***

Membuka Aplikasi
  Open Application  ${REMOTE_URL}    
  ...  deviceName=${DEVICE_NAME}
  ...  platformName=${PLATFORM_NAME}
  ...  appPackage=${PACKAGE_NAME}    
  ...  appActivity=${APP_ACTIVITY}
  ...  automationName=${ANDROID_AUTOMATION_NAME}
  ...  app=${APP_LOCATION}

Auto Grant
    Click Element    ${DENY_BUTTON}

Click Login Button
    Click Element    ${LOGIN_BUTTON}

Save Login Info Page Visible
    Wait Until Element Is Visible    ${SAVE_LOGIN_INFO_PAGE}

Attempt Not Save Login Creds
    Click Element    ${BUTTON_NOT_NOW}