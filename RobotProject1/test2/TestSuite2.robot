*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test Suite Setup    
Suite Teardown    Log    I am inside Test Suite Teardown    
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown            

Default Tags    sanity

*** Test Cases ***
SampleLoginTest
    [Documentation]    This is a simple login test
    Open Browser      ${URL}                 chrome
    LoginKW
    Click Element     id=welcome
    Sleep    2    
    Click Element     link=Logout
    Sleep    1    
    Close Browser
    Log               Test completed
    Log               This test was executed by %{username} on %{os}
    
*** Variables ***
${URL}  https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}   Admin    admin123
&{LOGINDATA}    username=Admin     password=admin123


*** Keywords ***
LoginKW
    Input Text        id=txtUsername         @{CREDENTIALS}[0]    
    Input Password    id=txtPassword         &{LOGINDATA}[password]
    Click Button      id=btnLogin


