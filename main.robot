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
		Wait Until Screen Contain    claim.PNG    300
		Click Claim
		Wait Until Screen Contain    mining.PNG    300
		Click Mining Hub
		Wait Until Screen Contain    mine.PNG    300
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