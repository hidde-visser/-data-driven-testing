*** Settings ***
Library                           QWeb

*** Variables ***
${url}=        https://copadoprofessionalservices-crt--crtedu.sandbox.lightning.force.com/lightning/page/home
${browser}=    chrome

*** Keywords ***
Setup Browser
    [Documentation]               Setup Browser
    Set Library Search Order      QWeb
    OpenBrowser                   ${url}                           ${browser}
    SetConfig                     LogScreenshot                    true
    SetConfig                     LineBreak                   ${EMPTY}                    #\ue000
    SetConfig                     DefaultTimeout              20s                         #sometimes salesforce is slow
    SetConfig                     SearchMode                  Draw
    SetConfig                     ShadowDOM                   True
    # Resolves issue with keyword Generate Random String
    Evaluate                      random.seed()
    LogScreenshot
    Log Variables     

Close the Browser
    [Documentation]               Close the Browser
    QWeb.CloseBrowser

Close All Active Browsers
    [Documentation]               Close All Browsers
    QWeb.Close All Browsers