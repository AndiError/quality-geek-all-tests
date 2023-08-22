*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}      https://quality-geek.com/works/
${browser}  chrome

    #  robot -d results tests/domreal/imageswork.robot
*** Test Cases ***
Page Should Contain Current Image Alternetica
    Open Browser    ${url}    ${browser}
    ${image_src}    Get Element Attribute    xpath=//img[@alt="Alternetica"]    src
    Should Not Be Empty    ${image_src}
    sleep               5s
    Close Browser
*** Test Cases ***
Page should contain 10 projects images + 2 logo images
    open browser    ${url}  ${browser}
    ${image_count}    get element count    //img
    Should Be True    ${image_count} == 12
    Close Browser
