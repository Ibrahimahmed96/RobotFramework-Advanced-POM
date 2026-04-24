*** Settings ***
Library           SeleniumLibrary
Library           ../Resources/CustomLib.py
Resource          ../Resources/PageObjects/LoginPage.robot
Resource          ../Resources/PageObjects/InventoryPage.robot

Test Setup        Open Browser    https://www.saucedemo.com/    chrome
Test Teardown     Close Browser

*** Test Cases ***
End-to-End Purchase Workflow
    [Documentation]    Verifies full purchase flow with dynamic data.
    [Tags]             Regression
    
    Navigate To Login Page
    Login With Credentials       standard_user    secret_sauce
    
    ${fname}    ${lname}    ${zip}    Generate Random User Data
    
    Add Item To Cart
    Proceed To Checkout
    Fill Shipping Information    ${fname}    ${lname}    ${zip}
    Finish Order
    Verify Success Message
