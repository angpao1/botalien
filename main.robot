*** Settings ***
Documentation     Sikuli Library Demo
Test Setup        Add Needed Image Path
Test Teardown     Stop Remote Server
Library           SikuliLibrary
Library           OperatingSystem
Library           String
Library           DateTime

*** Variables ***
${IMAGE_DIR}      ${CURDIR}\\images

*** Test Cases ***
Bot Alien
    ${d}=    get time
    Log To Console    START BOT ${d}
	
	Open Chrome

    FOR    ${i}    IN RANGE    9999999
        Click Mine
		Wait Until Screen Contain    claim.PNG    3000
		Click Claim
		Wait Until Screen Contain    captcha.PNG    3000
		Click Captcha
		Wait Until Screen Contain    approve.PNG    3000
		Click Approve
		Wait Until Screen Contain    mining.PNG    3000
		Click Mining Hub
		Wait Until Screen Contain    mine.PNG    3000
    END

*** Keywords ***
Add Needed Image Path
    Add Image Path    ${IMAGE_DIR}
	
Open Chrome
    Click    chrome.PNG

Click Mine
    Click    mine.PNG
	
Click Mining Hub
    Click    mining.PNG
	
Click Claim
    Click    claim.PNG
	
Click Captcha
    Click    captcha.PNG
	
Click Approve
    Click    approve.PNG