*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# robot -d results tests/amazon.robot

*** Variables ***
${BROWSER}  gc
${URL}  http://www.amazon.com
${SLEEP}    3s

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser  ${URL}  ${BROWSER}
    Sleep   ${SLEEP}
    Page Should Contain     Cart
    Close Browser

User must Secure in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Detailed
    Open Browser  ${URL}  ${BROWSER}
    Sleep   ${SLEEP}
    Page Should Contain     Cart
    Close Browser

User must Login in to check out the item
    [Documentation]  This is some basic info about the test
    [Tags]  Detailed
    Open Browser  ${URL}  ${BROWSER}
    Sleep   ${SLEEP}
    Page Should Contain     Cart
    Close Browser

*** Keywords ***
