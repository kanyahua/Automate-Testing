*** Settings ***
Resource            ../keywords/kw_aboutsu.robot
Library             OperatingSystem
Library             SeleniumLibrary

Suite Setup         Run Keywords    เปิดบราวเซอร์
...                     AND    เปิดหน้าจอให้เต็ม
Suite Teardown      Close All Browsers


*** Test Cases ***
เทส
    กดปุ่ม "Sign in with SSO"
    รอจนมีกล่อง "Sign in"
    กดที่ช่องinput สำหรับกรอกอีเมล
    กรอกอีเมล
    กดปุ่ม "ถัดไป"
    รอจนมีกล่อง "Enter Password"
    กดช่องinput สำหรับใส่รหัสผ่าน
    ใส่รหัสผ่าน
    กดปุ่ม "ลงชื่อเข้าใช้"
    รอจนเปลี่ยนเป็นหน้า "ลงชื่อเข้าใช้ค้างไว้หรือไม่"
    กดปุ่มเพื่อลงชื่อค้างไว้
    รอจนเปลี่ยนเป็นหน้าเป็นหน้า /home
    เลือกเมนู "News" ฝั่งซ้าย
    # แสดงปุ่ม "Create News"
    # แสดงช่อง Search แสดงไอคอนค้นหา Search
    # แสดงDropdown ค้นหา Category
    # แสดงDropdown ค้นหา Announcer
    # แสดงDropdown ค้นหา Status
    # แสดงDropdown ค้นหา Select Date แสดงไอคอนปฏิทิน
    กดที่ช่อง "Search"
    พิมพ์คำว่า "สร้าง"
