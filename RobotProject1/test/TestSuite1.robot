*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***  
FirstSeleniumTest
   
   
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait             5
    Input Text      name=q                PES 2021    
    Press Keys      name=q                ENTER
    #Click Button    name=btnK    
    Sleep                                 2    
    Close Browser
    Log             Test completed
    
                             