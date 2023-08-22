*** Settings ***
Library         SeleniumLibrary

    # robot -d results tests/datingsites/sidepiece.robot
*** Variables ***



*** Test Cases ***
Should be run automation for sidepiece
    [Documentation]             Site SIDEPIECE should be available
    [Tags]                      1002 Home Smoke
    # Initialize Selenimum
    set selenium speed          2s
    set selenium timeout        2s

    #open browser
    open browser                https://sidepieceapp.com/   chrome

    page should contain image   xpath=/html/body/div[2]/div[2]/div/div[1]/div/div[2]/div[1]/picture/img
    # Privacy PAge
    click link                  xpath=/html/body/div[2]/div[1]/ul/li[7]/a
    page should contain         SIDEPIECE Privacy Policy
    click link                  xpath=/html/body/div[2]/div[1]/div[1]/a
     # App store
    click link                  xpath=/html/body/div[2]/div[2]/div/div[1]/div/div[2]/div[2]/div/div[1]/a
    page should contain         App Store
    close browser

*** Test Cases ***
Should redirect to PlayMarket
     open browser               https://sidepieceapp.com/   chrome
     click link                 xpath=/html/body/div[2]/div[2]/div/div[1]/div/div[2]/div[2]/div/div[2]/a
     page should contain        google_logo Play
     close browser
