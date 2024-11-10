*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When button for setting value pressed the counter value becomes setted value
    Go To  ${HOME_URL}
    Input Text   set_value    10
    Click Button    aseta
    Page Should Contain  nappia painettu 10 kertaa
    