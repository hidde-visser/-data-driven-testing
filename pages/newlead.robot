*** Settings ***
Library                           QWeb
Library                           QForce

*** Keywords ***

Select Lead Status Dropdown Value
     [Arguments]      ${leadstatus}
    UseModal          On
    PickList          Lead Status      ${leadstatus}
    UseModal          Off
    LogScreenshot

Select Lead Salutation Dropdown Value
     [Arguments]      ${salutation}
    UseModal          On
    PickList          Salutation       ${salutation}
    UseModal          Off
    LogScreenshot

Type Lead First Name
     [Arguments]      ${firstname}
    UseModal          On
    TypeText          First Name       ${firstname}
    UseModal          Off
    LogScreenshot

Type Lead Last Name
     [Arguments]      ${lastname}
    UseModal          On
    TypeText          Last Name        ${lastname}
    UseModal          Off
    LogScreenshot

Type Lead Company
     [Arguments]      ${company}
    UseModal          On 
    TypeText          Company          ${company}
    UseModal          Off
    LogScreenshot

Click Button Save Lead
    Set Library Search Order    QWeb
    UseModal          On
    ClickText         Save    partial_match=False
    UseModal          Off
    LogScreenshot

# GROUPED

Enter Fields to create Lead
    [Arguments]      ${leadstatus}    ${salutation}    ${firstname}    ${lastname}    ${company}
    Select Lead Status Dropdown Value         ${leadstatus}
    Select Lead Salutation Dropdown Value          ${salutation}
    IF                        '${firstname}'!='${EMPTY}'           
        Type Lead First Name                           ${firstname}
    END    
    Type Lead Last Name                            ${lastname}
    Type Lead Company                              ${company}