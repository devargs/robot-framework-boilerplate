*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${URL}          https://google.com

*** Test Cases ***
Trying to run from docker container
    Log to console      testing...
    Open In SauceLabs
    Capture Page Screenshot         the_file_name.png
    Close Browser


*** Keywords ***
Open in SauceLabs
    [Arguments]         ${platform}=Windows 10     ${browserName}=chrome      ${BrowserVersion}=62.0
    Open Browser        ${URL}
                                        ...  remote_url=http://%{SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.saucelabs.com:80/wd/hub
                                        ...  desired_capabilities=name:Simple Robot Test (${platform} - ${browserName}),platform:${platform},browserName:${browserName},version:${BrowserVersion}