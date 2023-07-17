*** Settings ***
Library                                 SeleniumLibrary
Variables                               variable.yaml
Resource                                common.robot
Library                                 RPA.Windows    
Library                                 RPA.Desktop

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
    Wait Until Page Contains Element    xpath=(//div[@class="MuiGrid-root MuiGrid-item MuiGrid-grid-xs-7.5 css-shfgwp"])[4]
    Scroll Element Into View    xpath=(//div[@class="MuiGrid-root MuiGrid-item MuiGrid-grid-xs-7.5 css-shfgwp"])[4]
    #Click on add new button
    Click Element    xpath=(//div[@class="anotwe"]/div[1]/button)[3]

Enter title for the project
    #Enter title
    Input Text    xpath=//input[@class="MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng"]    Clean Mumbai

Select date for the project
    #Select Year dropdown
    Click Element    xpath://button[@aria-label="Choose date"]
    Click element	xpath=//div[@class="MuiPickersCalendarHeader-labelContainer css-l0iinn"]
    #Select Year 
    Click element   xpath=//button[contains(text(),"2024")]
    #Select date
    Click element   xpath=//button[@role="gridcell"][contains(text(),"8")]
    

Select one of the options from the dropdown
    #click on dropdwon 
    Click Element    xpath=//div[@aria-labelledby="mui-component-select-status"] 
    #Select any one option from dd
    Click Element    (//li[@class="MuiButtonBase-root MuiMenuItem-root MuiMenuItem-gutters MuiMenuItem-root MuiMenuItem-gutters css-6bjono"])[3]

Click on 'About Project' field
    #Click on About Project and add description
    Input Text    xpath=//textarea[@rows="3"]    “Cleanliness is next to godliness,” as the saying goes, is definitely true. We should pay attention to the smallest details. We should put trash in trash cans, stop pooping in public, stop spitting, etc., because, as the saying goes, “Little drops of water make an ocean.”

Clck on upload icon under Attach Media
    #verification of upload file option
    Wait Until Element Is Visible    xpath=//button[@class="MuiButtonBase-root MuiIconButton-root MuiIconButton-colorPrimary MuiIconButton-sizeMedium css-18gpjm4"]
    Sleep    1s
    #click on upload icon and choose file
    Click Element    xpath=//button[@class="MuiButtonBase-root MuiIconButton-root MuiIconButton-colorPrimary MuiIconButton-sizeMedium css-18gpjm4"]
    #RPA Implementation
    RPA.Windows.Control Window        Open
    RPA.Windows.Maximize Window       Open
    RPA.Windows.Double Click          PM Awas Yojana (pinned)
    RPA.Windows.Control Window        Open
    RPA.Windows.Double Click          PM_Awas.jpg
   
Click on 'SUBMIT' button
    #Verify button text
    Element Text Should Be    xpath=//div[@class="MuiBox-root css-yfwgvy"]/button[1]    SUBMIT
    #Click on 'SUBMIT' button
    Sleep    2s
    Scroll Element Into View    xpath=//div[@class="MuiBox-root css-yfwgvy"]/button[1]   
    Click Button    xpath=//div[@class="MuiBox-root css-yfwgvy"]/button[1]

View the created development project under "Development Project" 
    Sleep    4s
    #Scroll to development projet
    Scroll Element Into View    xpath=(//div[@class="MuiGrid-root MuiGrid-container css-1d3bbye"])[5]
    #Click on view all button
    Click Element    xpath=(//div[@class="anotwe"]/div[2]/button)[3]
    
