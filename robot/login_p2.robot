*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    ${LOCAL_URL}    ${BROWSER}
Test Setup    Go To    ${LOCAL_URL}
Suite Teardown    Close Browser

*** Variables ***
${LOCAL_URL}    http://localhost:7272/html    
${BROWSER}      chrome

*** Testcases ***
Login Success
    กรอกข้อมูลในการ Login    prathan    sckshuhari
    กดปุ่มเพื่อดำเนินการ Login
    ตรวจสอบผลการ Login    Welcome Page

Login Unsuccess with wrong username but correct password
    [Documentation]    ใส่ชื่อผู้ใช้ผิด
    กรอกข้อมูลในการ Login    thawatchai    sckshuhari
    กดปุ่มเพื่อดำเนินการ Login
    ตรวจสอบผลการ Login    Error Page

Login Unsuccess with correct username but wrong password
    [Documentation]    ใส่ชื่อผู้ใช้ผิด
    กรอกข้อมูลในการ Login    prathan    sckshuharI
    กดปุ่มเพื่อดำเนินการ Login
    ตรวจสอบผลการ Login    Error Page

*** Keywords ***
กรอกข้อมูลในการ Login
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Input Text    username_field    ${USERNAME}
    Input Text    password_field    ${PASSWORD}

กดปุ่มเพื่อดำเนินการ Login
    Click Button    login_button

ตรวจสอบผลการ Login
    [Arguments]    ${MESSAGE}
    Wait Until Page Contains    ${MESSAGE}