*** Settings ***
Library                           QWeb
Library                           QForce

*** Keywords ***

Open CPQ
    Wait Until Keyword Succeeds	    30 sec	2 sec	LaunchApp	CPQ 
    # LaunchApp                   CPQ
    LogScreenshot

Open Leads
    Wait Until Keyword Succeeds	    30 sec	2 sec	LaunchApp	Leads  
    # LaunchApp                       Leads
    VerifyText                      Recently Viewed    anchor=items
    LogScreenshot

Open Accounts
    Wait Until Keyword Succeeds	    30 sec	2 sec	LaunchApp	Accounts  
    # LaunchApp                   Accounts
    VerifyText                  Recently Viewed    anchor=items
    LogScreenshot

Open Contacts
    Wait Until Keyword Succeeds	    30 sec	2 sec	LaunchApp	Contacts  
    # LaunchApp                   Contacts
    VerifyText                  Recently Viewed    anchor=items
    LogScreenshot