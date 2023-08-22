*** Settings ***
Documentation               The home page should load
Library                     SeleniumLibrary

    # robot -d results  tests/datingsites/Kiri.robot

*** Variables ***


*** Test Cases ***
Home page should be loaded in this case
    [Documentation]         Home page should load for KIRI
    [Tags]                  1005    Home    Smoke
    # Initialize Selenium
    set selenium speed      2s
    set selenium timeout    1s

    # open browser
    open browser            https://kiridating.com     chrome
    set window size         width=1430    height=868

    # Privacy page
    click link              xpath=/html/body/div[2]/div[1]/ul/li[8]/a
    page should contain     Kiri Privacy Policy
    click link              xpath=/html/body/div[2]/div[2]/div/div/div/div[6]/table/tbody/tr[6]/td[1]/a
    close browser


*** Keywords ***
