*** Settings ***
Resource           ../Resource/common.robot
Resource           ../Resource/key.robot
#cd mp demo automation
#robot -d results Tests/main.robot

*** Test Cases ***
TestCase ID:147590

    Begin TestCase
    Click on Login
    Enter credentials and login
    Verify Url after login
    Close what's new popup
    Create a project under "Development Project"
    Enter title for the project 
    Select date for the project
    Select one of the options from the dropdown
    Click on 'About Project' field
    Clck on upload icon under Attach Media
    Click on 'SUBMIT' button
    View the created development project under "Development Project" 
    Uploading More Images
    End TestCase
    
