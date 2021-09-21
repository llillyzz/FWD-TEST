*** Settings ***
Suite Teardown    Close Browser
Library      Selenium2Library

*** Variables ***
${BROWSER}  chrome
${URL}      https://www.apple.com/th/iphone/

*** keywords ***
Open Url
    Close All Browsers
    Open Browser     https://www.apple.com/th/  Chrome
Click Iphone
    Click Link	    //*[@id="ac-globalnav"]/div/ul[2]/li[5]/a
Choose Iphone 11
    Wait Until Element Is Visible   //*[@id="chapternav"]/div/ul/li[5]/a
    Click Link	    //*[@id="chapternav"]/div/ul/li[5]/a
Choose Color Iphone
      Wait Until Element Is Visible     //*[@class="form-label-small" and contains(text(),"ม่วง")]
    Click Element   //*[@class="form-label-small" and contains(text(),"ม่วง")]
Choose Size Iphone
    Wait Until Element Is Visible   //*[@class="form-selector-title" and contains(text(),"64")]
    Click Element   //*[@class="form-selector-title" and contains(text(),"64")]
Add Cart
    Click Element        //div/span/button[@class="button button-block"]

*** Test Cases ***
TC1 open Apple Website
    Open Url
TC2 choose menu iphone
    Click Iphone
TC3 Choose iphone
    Choose Iphone 11
TC4 Choose Color
    Choose Color Iphone
TC5 Choose Size
    Choose Size Iphone
#TC6 Click Add Cart
    Add Cart

















