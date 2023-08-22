*** Settings ***
Documentation               Shoudl be run test Privilegedating site
Library                     SeleniumLibrary

    # robot -d results tests/datingSites/privileged.robot

*** Variables ***
${url}                      http://privilegedapp.com
${browser}                  chrome





*** Test Cases ***
Here should start run test of Privileged site
   [Documentation]               Home page should load for Privileged
   [Tags]                        1006     Smoke   Home

   #Initialize Selenium
   set selenium speed             5s
   set selenium timeout           5s

   # Open browser
   open browser                   ${url}       ${browser}
   set window size                width=1440    height=870
   page should contain            Dating is a Privilege.
  #Check background video
  page should contain element    xpath=/html/body/main/div/video/source
   # Check link to Privacy
  click link                     Privacy Policy
  #http://privilegedapp.com/privacy.php

   page should contain            Privacy Policy
   click link                    About us
   page should contain            You've Ever Had
   click link                     xpath=/html/body/footer/div/div/div[2]/nav/ul/li[6]/a
   page should contain            Terms & Conditions
   #click element                  css=.choose-future-btn.success
   #page should contain            $4999.99 Yearly


   close browser
*** Test Cases ***
Background video should autoplay automatically
    open browser                  ${url}    ${browser}
    set window size     width=1410    height=840
    sleep               3s
    ${video_count1}    get element count    //video[@autoplay][@loop][@muted][@playsinline]
    Should Be True    ${video_count1} == 1
    close browser
*** Test Cases ***
Video Should Start Autoplaying
    Open Browser    ${url}    ${browser}
    ${autoplay}    Run Keyword And Return Status    Page Should Contain Element    xpath=//video[@autoplay]
    Should Be True    ${autoplay}
    ${video_element}    Get WebElement    xpath=//video[@autoplay]
    ${autoplay}    Get Element Attribute    ${video_element}    autoplay
    Should Be Equal As Strings    ${autoplay}    true
    Close Browser
*** Keywords ***
