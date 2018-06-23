*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Testcases ***
Login Success
    Open Browser    http://localhost:7272/html    chrome
    Input Text    username_field    prathan
    Input Text    password_field    sckshuhari
    Click Button    login_button
    Wait Until Page Contains    Welcome
    Close Browser

Login Unsuccess with wrong username but correct password
    [Documentation]    ใส่ชื่อผู้ใช้ผิด
    Open Browser    http://localhost:7272/html    chrome
    Input Text    username_field    thawatchai
    Input Text    password_field    sckshuhari
    Click Button    login_button
    Wait Until Page Contains    Error
    Close Browser
*** Keywords ***