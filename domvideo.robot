*** Settings ***
Documentation           Background video and videopage number of videos
Library                 SeleniumLibrary

    #  robot -d results tests/domreal/domvideo.robot

*** Variables ***
${url}                  https://domrealestategroup.com
${browser}              chrome



*** Test Cases ***
Page Should Contain backgroundvideo
    open browser        ${url}  ${browser}
    set window size     width=1410    height=840
    sleep               3s
    ${video_count1}    get element count    //video[@autoplay][@loop][@muted][@playsinline]
    Should Be True    ${video_count1} == 1
    ${video_count}    get element count    //video[not(@autoplay)]
    Should Be True    ${video_count} == 4
    close browser


*** Keywords ***
