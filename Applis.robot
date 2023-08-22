*** Settings ***
Documentation               this test applis technologies site
Library                     SeleniumLibrary


    #  robot -d results tests/DatingSites/Applis.robot
*** Variables ***


*** Test Cases ***
Wedsite should be available
    [Documentation]         Home page should load for ApplisTechnologies
    [Tags]                  1003 Home   Smoke
    #Initialize Selenium
    set selenium speed      2s
    set selenium timeout    2s

    # open browser
    open browser            https://applistechnologies.com/#home    chrome
    
    set window size         width=1420    height=876

    page should contain     Applis Technologies
    click link              xpath=/html/body/main/footer/div/div/nav/div/ul[2]/li[2]/a
    page should contain     Terms and Conditions
    click link              xpath=/html/body/main/section/div/div/div[2]/div/p[4]/a[1]
    close browser



*** Keywords ***



