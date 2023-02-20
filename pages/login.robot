*** Settings ***

Library                           QWeb
Library                           QForce

*** Keywords ***

LogOn to SalesForce
    Set Library Search Order    QWeb
    Log To Console        ${url}
    Log Variables
    VerifyText         Username
    TypeText           Username    ${username}
    TypeSecret         Password    ${password}
    ClickText          Log In to Sandbox
    VerifyText         Sales
    LogScreenshot