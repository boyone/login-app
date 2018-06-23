*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    ${LOCAL_URL}    ${BROWSER}
Test Setup    Go To    ${LOCAL_URL}
Suite Teardown    Close Browser
Test Template   Login Steps

Resource    resource_p.robot

*** Variables ***
${LOCAL_URL}    http://localhost:7272/html    
${BROWSER}      chrome

*** Testcases ***
Login Success    prathan    sckshuhari    Welcome Page

Login Unsuccess with wrong username but correct password    thawatchai    sckshuhari    Error Page

Login Unsuccess with correct username but wrong password    prathan    sckshuharI    Error Page
