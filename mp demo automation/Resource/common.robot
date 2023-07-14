*** Settings ***
Library                            SeleniumLibrary
Variables                          variable.yaml


*** Keywords ***

Begin TestCase
    Open Browser                    ${url}       ${browser}
    Location Should Be              ${url}
    Maximize Browser Window
    Set Selenium Speed              1s


End TestCase
    Sleep                           1s
    Close All Browsers
