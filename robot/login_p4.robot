
*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    ${LOCAL_URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables ***
${LOCAL_URL}    http://localhost:7272/html    
${BROWSER}      chrome

*** Testcases ***
Login All
    [Template]    Login Steps
    prathan       sckshuhari    Welcome Page     
    thawatchai    sckshuhari    Error Page    
    prathan       sckshuharI    Error Page    

*** Keywords ***
Login Steps
    [Arguments]    ${USERNAME}    ${PASSWORD}    ${MESSAGE}
    Go To    ${LOCAL_URL}
    กรอกข้อมูลในการ Login    ${USERNAME}    ${PASSWORD}
    กดปุ่มเพื่อดำเนินการ Login    
    ตรวจสอบผลการ Login    ${MESSAGE}

กรอกข้อมูลในการ Login
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Input Text    username_field    ${USERNAME}
    Input Text    password_field    ${PASSWORD}

กดปุ่มเพื่อดำเนินการ Login
    Click Button    login_button

ตรวจสอบผลการ Login
    [Arguments]    ${MESSAGE}
    Wait Until Page Contains    ${MESSAGE}