*** Settings ***
Library                                  QWeb
Library                                  QForce
Library                                  DataDriver         file=DataDriven.csv    include=tagtoinclude    exclude=tagtoexclude
# Library                                DataDriver         file=DataDriven.csv
# Library                                DataDriver         file=${leads-data}
Resource                                 ../resources/pages/browser.robot
Resource                                 ../resources/pages/login.robot
Resource                                 ../pages/launcher.robot
Resource                                 ../pages/leads.robot
Resource                                 ../resources/pages/newlead.robot
Test Setup                               Run Keywords    Setup Browser    LogOn to SalesForce
Test Template                            Create Lead Preferred
Test Teardown                            Close the Browser
Suite Teardown                           Close All Active Browsers

*** Test Cases ***
Create Lead Preferred with ${leadstatus} ${salutation} ${firstname} ${lastname} ${company}
# Create Lead Preferred     New     Mr.     Patrick     Kievit     Copado

*** Keywords ***
Create Lead
    [Arguments]    ${leadstatus}   ${salutation}    ${firstname}    ${lastname}    ${company}
    Open Leads
    Click Button New Lead
    UseModal                                        On
    Select Lead Status Dropdown Value               ${leadstatus}   
    Select Lead Salutation Dropdown Value           ${salutation}
    Type Lead First Name                            ${firstname} 
    Type Lead Last Name                             ${lastname}
    Type LeadCompany                                ${company}
    UseModal                                        Off
    Click Button Save Lead


Create Lead Preferred
     [Arguments]    ${leadstatus}   ${salutation}    ${firstname}    ${lastname}    ${company}
     Open Leads
     Click Button New Lead
     Enter Fields to create Lead   ${leadstatus}   ${salutation}    ${firstname}    ${lastname}    ${company}
     Click Button Save Lead