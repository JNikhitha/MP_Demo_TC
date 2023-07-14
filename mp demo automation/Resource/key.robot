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
    Sleep    4s
    #verify url
    Location should be                   ${mpurl}

Close what's new popup
    #verify pop up title
    Wait Until Page Contains Element     xpath://div[@role='presentation']//h1[1]    
    #close pop up
    Click Element                        xpath://img[@class="closeIcon"]

Create a project under "Development Project" 
    Click Element     xpath=(//li[@class="justify-content-between"]/button)[2]
    #Scroll to development projet
    Scroll Element Into View    xpath=(//div[@class="MuiGrid-root MuiGrid-container css-1d3bbye"])[5]
    #Click on add new button
    Click Element    xpath=(//div[@class="anotwe"]/div[1]/button)[3]

Enter title and date for the project
    #Enter title
    Input Text    xpath=//input[@class="MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng"]    Clean Mumbai
    #Select date
    Click Button    xpath=//div[@class="MuiInputAdornment-root MuiInputAdornment-positionEnd MuiInputAdornment-outlined MuiInputAdornment-sizeMedium css-1nvf7g0"]/button
    Click Button    xpath=(//button[@class="MuiButtonBase-root MuiPickersDay-root MuiPickersDay-dayWithMargin css-ub1r1"])[13]

Select one of the options from the dropdown
    #click on dropdwon and select any one option
    Click Element    xpath=//div[@aria-labelledby="mui-component-select-status"] 
    Click Element    (//li[@class="MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-6bjono"])[3]

Click on 'About Project' field
    #Click on About Project and add description
    Input Text    xpath=//textarea[@rows="3"]    “Cleanliness is next to godliness,” as the saying goes, is definitely true. We should pay attention to the smallest details. We should put trash in trash cans, stop pooping in public, stop spitting, etc., because, as the saying goes, “Little drops of water make an ocean.”

Clck on upload icon under Attach Media
    #verification of upload file option
    Wait Until Element Is Visible    xpath=//button[@class="MuiButtonBase-root MuiIconButton-root MuiIconButton-colorPrimary MuiIconButton-sizeMedium css-18gpjm4"]
    Sleep    4s
    #click on upload icon and choose file
    Click Element    xpath=//button[@class="MuiButtonBase-root MuiIconButton-root MuiIconButton-colorPrimary MuiIconButton-sizeMedium css-18gpjm4"]
    Choose File    xpath=//button[@class="MuiButtonBase-root MuiIconButton-root MuiIconButton-colorPrimary MuiIconButton-sizeMedium css-18gpjm4"]    C:\Users\Suhas.Panhalkar\Downloads\Modiji.png  

Click on 'SUBMIT' button
    #Verify button text
    Element Text Should Be    xpath=//div[@class="MuiBox-root css-yfwgvy"]/button[1]    SUBMIT
    #Click on 'SUBMIT' button
    Click Button    xpath=//div[@class="MuiBox-root css-yfwgvy"]/button[1]

View the created development project under "Development Project" 
    #Scroll to development projet
    Scroll Element Into View    xpath=(//div[@class="MuiGrid-root MuiGrid-container css-1d3bbye"])[5]
    #Click on view all button
    Click Element    xpath=(//div[@class="anotwe"]/div[2]/button)[3]