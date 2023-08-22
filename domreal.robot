*** Settings ***
Documentation                   Dom Real tests
Library                         SeleniumLibrary

    # robot -d results tests/domreal
*** Variables ***


*** Test Cases ***
Should start tests for DomReal
    [Documentation]             Home page should load for DomReal
    [Tags]                      2001 Home Smoke Dom
    # Initialize Selenium
    set selenium speed          5s
    set selenium timeout        5s

    # Open browser

   open browser                 https://domrealestategroup.com/         chrome
   set window size              width=1410    height=840
   sleep                        3s
   # video check
   # page should contain          xpath=//*[@id="bgvid"]/source[1]
   # phone number on home page
   page should contain element  xpath=/html/body/header/div/div/div[2]/div[1]/a
   # Verify images Contact us and Vadims
   page should contain image    xpath=//*[@id="primary"]/section[3]/div/div[2]/div/picture/img
   page should contain image    xpath=//*[@id="primary"]/section[5]/div/div/div[1]/picture/img
   sleep                        2s
   # Menu pop-up
   click button                 xpath=/html/body/div[1]/div/button
   sleep                        10s
   # About US page load
   click link                   About us
   sleep                        5s
   # Sucess page
   click link                   xpath=//*[@id="menu-item-131"]/a
   page should contain image    xpath=//*[@id="primary"]/section[2]/div/div/div[1]/picture/img
   # Services page
   click button                 xpath=/html/body/div[1]/div/button
   click link                   xpath=//*[@id="menu-item-68"]/a
   # sell my home image
   page should contain image    xpath=//*[@id="primary"]/section[1]/div/div[2]/div[2]/picture/img
   # buy home image
   page should contain image    xpath=//*[@id="primary"]/section[1]/div/div[3]/div[2]/picture/img
   # vakue home image
   page should contain image    xpath=//*[@id="primary"]/section[1]/div/div[4]/div[2]/picture/img
   # Video page
   click link                   xpath=//*[@id="menu-item-130"]/a
   sleep                        3s
   # Policy page
   click link                   xpath=//*[@id="menu-item-133"]/a
   page should contain          Privacy Policy
   # Terms page
   click link                   xpath=//*[@id="menu-item-1427"]/a
   page should contain          Welcome to Dom Real Estate Group!

   close browser



*** Keywords ***


