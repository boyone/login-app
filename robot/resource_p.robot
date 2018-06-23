*** Variables ***
${LOCAL_URL}    http://localhost:7272/html    
${BROWSER}      chrome


*** Keywords ***
Login Steps
    [Arguments]    ${USERNAME}    ${PASSWORD}    ${MESSAGE}
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