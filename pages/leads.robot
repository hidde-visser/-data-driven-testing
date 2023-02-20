*** Settings ***
Library                         QWeb

*** Keywords ***

Click Button New Lead
    Set Library Search Order    QWeb
    ClickText                   New                     anchor=Import
    LogScreenshot