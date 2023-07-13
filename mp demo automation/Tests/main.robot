*** Settings ***
Resource           ../Resource/common.robot
Resource           ../Resource/key.robot
#cd mp demo automation
#robot -d results /Tests/main.robot

*** Test Cases ***
TestCase ID:147590

    Begin TestCase
    Click on Login
    Enter credentials and login
    Verify Url after login
    Close what's new popup
    End TestCase
