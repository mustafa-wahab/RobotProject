*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test Suite Setup    
Suite Teardown    Log    I am inside Test Suite Teardown    
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown            

Default Tags    sanity


*** Test Cases ***
MyFirstTest
    [Tags]     smoke
    Log        Hello World    

MySecondTest
    [Tags]          example 
    Log             I am inside 2nd test
    Set Tags        regression1    
    Remove Tags     regression1



MyThirdTest
    Log    I am inside 3nd test    




    Log               Test completed