*** Settings ***
Documentation               this test for alphadating site
Library                     SeleniumLibrary


    # robot -d results  tests/datingsites/YAlpha.robot
*** Variables ***


*** Test Cases ***
The home page for alphadating site should be loaded
    [Documentation]         Home page should load for Alphadating site
    [Tags]                  1004    Smoke   Home

    #Initialize Selenium
    set selenium speed      1s
    set selenium timeout    1s

    # open browser
    open browser            https://alphadatingapp.com/     chrome
    set window size         width=1430    height=868
    page should contain   The world’s best social networking app for gay,

    # Privacy page
    click link              xpath=/html/body/div[2]/div[1]/ul/li[8]/a
    page should contain     Alpha Privacy Policy
    click link              xpath=/html/body/div[2]/div[1]/div/a
    click image             xpath=/html/body/div[2]/div[2]/div/div[1]/div/div[2]/div[2]/div/div[1]/a/img[1]
    close browser



*** Keywords ***


