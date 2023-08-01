*** Settings ***
Documentation     Simple example using SeleniumLibrary
Library           SeleniumLibrary
#Library           AutoRecorder

*** Variables ***
${LOGIN URL}        https://www.tokopedia.com
${BROWSER}          Chrome

*** Test Cases ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}  #gc
    Input Text      //*[@aria-label="Cari di Tokopedia"]   remote control
    Press Keys      //*[@aria-label="Cari di Tokopedia"]    RETURN
    Sleep           20s
