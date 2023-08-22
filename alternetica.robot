*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}      https://alternetica.com.ua/
${browser}  chrome

    #  robot -d results tests/domreal/alternetica.robot
*** Test Cases ***
Page Should Contain Current Image Alternetica
     # initialization
    set selenium speed              1s
    set selenium timeout            1s
    # open browser and ser size
    Open Browser                ${url}    ${browser}
    set window size                 width=1440  height=840
    #${image_src}    Get Element Attribute    xpath= //*[@id="sppb-addon-1652362675807"]/div/div/section/div/div/div/div[1]/img   src
   # Should Not Be Empty         ${image_src}
    sleep                       5s
    click element               xpath=/html/body/div[1]/div/div/div[2]/div/div/section[2]/div/div/div/div/div/div/div/div/div/div/div/div/div
    page should contain         Замовити звінок
    page should contain button  xpath=//*[@id="submit"]
    sleep                       3s
    click button                xpath=/html/body/div[3]/div[1]/button
    sleep                       3s
    # Open menu
    click element               xpath=//*[@id="wrapper"]/header/div/div/div[2]
    sleep                       3s
    click link                  xpath=//*[@id="top-menu"]/ul/li[2]/a
    sleep                        2s
    # About page
    page should contain image   xpath=//*[@id="sppb-addon-1652890451739"]/div/div/div/img
    click element               xpath=//*[@id="wrapper"]/header/div/div/div[2]
    sleep                       2s
    click link                  xpath=//*[@id="top-menu"]/ul/li[3]/a
    page should contain         Монтаж систем опалення / теплових насосів
    click element               xpath=//*[@id="wrapper"]/header/div/div/div[2]
    sleep                       3s
    click link                  xpath=//*[@id="top-menu"]/ul/li[4]/a
    sleep                        2s
    click element               xpath=//*[@id="wrapper"]/header/div/div/div[2]
    sleep                       3s
    click link                  xpath=//*[@id="top-menu"]/ul/li[5]/a
    sleep                        2s
    click element               xpath=//*[@id="wrapper"]/header/div/div/div[2]
    sleep                       3s
    click link                  xpath=//*[@id="top-menu"]/ul/li[6]/a
    sleep                        2s

    Close Browser
*** Test Cases ***
Page should contain 4 more links 1
    Open Browser                  https://alternetica.com.ua/production/heatpumps    ${browser}
    set window size               width=1440  height=840
    sleep                         3s
    close browser

*** Test Cases ***
Page should contain 3 more links 2
    Open Browser                  https://alternetica.com.ua/production/heatpumps/povitriani-teplovi-nasosy ${browser}
    set window size               width=1440  height=840
    sleep                         3s
    close browser

*** Test Cases ***
Page should contain 3 more links 3
    Open Browser                  https://alternetica.com.ua/production/heatpumps/geotermalni-teplovi-nasosy ${browser}
    set window size               width=1440  height=840
    sleep                         3s
    close browser

*** Test Cases ***
Page should contain 3 more links 4
    Open Browser                  https://alternetica.com.ua/production/rekuperator ${browser}
    set window size               width=1440  height=840
    sleep                         3s
    close browser