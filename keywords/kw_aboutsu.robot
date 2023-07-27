*** Settings ***
Library    SeleniumLibrary
Library    Process
Resource    ../variable/variable.robot

*** Keywords ***
เปิดบราวเซอร์
    Open Browser    ${URL}    ${BROWSER}    options=add_experimental_option("detach", True)
เปิดหน้าจอให้เต็ม
    Maximize Browser Window
กดปุ่ม "Sign in with SSO"
    Click Button    xpath=//*[@id="root"]/div/div[2]/div/div/div/div/div/button
รอจนมีกล่อง "Sign in"
    Wait Until Element Is Visible   xpath=//*[@id="i0116"]
กดที่ช่องinput สำหรับกรอกอีเมล
    Click Element    xpath=//*[@id="i0116"]
กรอกอีเมล
    Input Text    xpath=//*[@id="i0116"]    pawutinan_s@su.ac.th
กดปุ่ม "ถัดไป"
    Click Button    xpath=//*[@id="idSIButton9"]
รอจนมีกล่อง "Enter Password"
    Wait Until Element Is Visible   xpath=//*[@id="i0118"]
กดช่องinput สำหรับใส่รหัสผ่าน
    Click Element    xpath=//*[@id="i0118"]
ใส่รหัสผ่าน
    Input Password    xpath=//*[@id="i0118"]    S1tt1d3tlm78
กดปุ่ม "ลงชื่อเข้าใช้"
    Click Button    xpath=//*[@id="idSIButton9"]
รอจนเปลี่ยนเป็นหน้า "ลงชื่อเข้าใช้ค้างไว้หรือไม่"
    Wait Until Location Is    https://login.microsoftonline.com/213e491d-43e3-4a8c-ac2d-8a26ed885e0f/login
กดปุ่มเพื่อลงชื่อค้างไว้
    Click Button    xpath=//*[@id="idSIButton9"]
รอจนเปลี่ยนเป็นหน้าเป็นหน้า /home
    Wait Until Location Is    https://smartplus-dev.su.ac.th/admin/home
เลือกเมนู "News" ฝั่งซ้าย
    Click Element    xpath=/html/body/div[1]/div/div/section/aside/div/div/div[1]/div[2]/ul/li[2]
# แสดงปุ่ม "Create News"
    # Page Should Contain Button    xpath=//*[@id="root"]/div/div/section/section/header/div[2]/div/div/button
#แสดงช่อง Search แสดงไอคอนค้นหา Search
    #Page Should Contain Element    xpath=//*[@id="rc-tabs-1-panel-all-news"]/div/div[1]/div[1]/span/input
# แสดงDropdown ค้นหา Category
#     Page Should Contain Element    xpath=//*[@id="rc-tabs-1-panel-all-news"]/div/div[1]/div[1]/span/input
# แสดงDropdown ค้นหา Announcer
#     Page Should Contain Element    xpath=//*[@id="rc_select_4"]
# แสดงDropdown ค้นหา Status
#     Page Should Contain Element    xpath=//*[@id="rc_select_5"]
# แสดงDropdown ค้นหา Select Date แสดงไอคอนปฏิทิน
    # Page Should Contain Element    xpath=//*[@id="rc-tabs-1-panel-all-news"]/div/div[1]/div[5]/div/div/input
กดที่ช่อง "Search"
    Click Element    xpath=/html/body/div[1]/div/div/section/section/main/div/div/div/div[2]/div/div/div/div[1]/div[1]/span/input
พิมพ์คำว่า "สร้าง"
    Input Text     xpath=/html/body/div[1]/div/div/section/section/main/div/div/div/div[2]/div/div/div/div[1]/div[1]/span/input    สร้าง