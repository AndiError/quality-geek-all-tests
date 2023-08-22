*** Settings ***
Documentation                       Quality-Geek start running
Library                             SeleniumLibrary

     # robot -d results tests/domreal/quality_geek.robot

*** Variables ***


*** Test Cases ***
Should start tests for QualityGeek
    [Documentation]                 Home page should load for QualityGeek
    [Tags]                          3001 Home Geek
    # initialization
    set selenium speed              3s
    set selenium timeout            3s
    # open browser and ser size
    open browser                    https://quality-geek.com/   chrome
    set window size                 width=1440  height=840
    # check main title
    page should contain             Design & Create
    sleep                           2s
    page should contain             your Business Ideas
    # open open
    sleep                           3s
    # open menu bar
    click element                   xpath=/html/body/div[2]/div/header/div[2]/div[2]/button/span
    sleep                           2s
    # click link about
    click link                      Works
    page should contain             Let’s work together
    # click button "see all"
    click link                      See all
    Page Should Contain             We do amazing things
    click link                      class=custom-logo-link
    click link                      Scriptsquare
    sleep                           3s
    close browser





*** Keywords ***

