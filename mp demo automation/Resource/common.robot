*** Settings ***
Library            SeleniumLibrary
Variables          variable.yaml

*** Keywords ***

Begin TestCase
    Open Browser    ${url}       ${browser}
    Maximize Browser Window


End TestCase
    Close All Browsers
