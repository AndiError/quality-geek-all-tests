*** Settings ***
Documentation       This test dating sites
Library             SeleniumLibrary

    #   robot -d results tests/datingsites/dateify.robot

*** Variables ***


*** Test Cases ***
Website should be available
    [Documentation]         Dateify sity should be available
    [Tags]                  1001    Smoke   Index
    #Initialize Selenium
    set selenium speed      1s
    set selenium timeout    2s
    # open browser
    log                     starting case
    open browser            https://dateifyapp.com/     chrome
    set window size         width=1440    height=868

    page should contain     DATEIFY
    # Privacy Page
    click link              xpath=/html/body/header/div/div/nav/div[2]/ul/li[3]/a
    page should contain     Privacy policy
    click link              xpath=/html/body/main/section/div/div/div[2]/div/div[1]/table/tbody/tr[2]/td[2]/p[2]/a
    close browser


*** Keywords ***
