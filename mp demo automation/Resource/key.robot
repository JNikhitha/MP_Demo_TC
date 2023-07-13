*** Settings ***
Library                                 SeleniumLibrary
Variables                               variable.yaml
Resource                                common.robot

*** Keywords ***

Click on Login
    #click on login
    Click Element                        xpath://a[@id="nmlogin"]
    #verify pop up is displayed
    Page Should Contain Element          xpath://div[@class="form-horizontal SignPopup"][1]

Enter credentials and login
    #enter email
    Input Text                           xpath://input[@id="email_address"]        ${email}
    #enter password
    Input Text                           xpath://input[@id="password"]             ${pass}
    #click on login button
    Click Element                        xpath://button[@id="login_button1"]
    #verify url
    Location Should Be                   ${url}
    #verify if page contains 'Mera Saansad' link
    Wait Until Page Contains Element     xpath://a//span[@data-hover="Mera saansad"]
    #click on 'Mera Saansad' link
    Click Element                        xpath://div[@class="app"]//a
    
Verify Url after login
    #switch tab
    Switch Window                        locator=NEW
    #verify url
    Location should be                   ${mpurl}

Close what's new popup
    #verify pop up title
    Wait Until Page Contains Element     xpath://div[@role='presentation']//h1[1]    
    #close pop up
    Click Element                        xpath://img[@class="closeIcon"]
