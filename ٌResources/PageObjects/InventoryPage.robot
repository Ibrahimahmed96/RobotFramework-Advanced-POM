*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ADD_TO_CART}       id=add-to-cart-sauce-labs-backpack
${CART_BTN}          class=shopping_cart_link
${CHECKOUT_BTN}      id=checkout
${FIRST_NAME}        id=first-name
${LAST_NAME}         id=last-name
${ZIP_CODE}          id=postal-code
${CONTINUE_BTN}      id=continue
${FINISH_BTN}        id=finish
${SUCCESS_MSG}       class=complete-header

*** Keywords ***
Add Item To Cart
    Click Button    ${ADD_TO_CART}
    Click Element    ${CART_BTN}

Proceed To Checkout
    Click Button    ${CHECKOUT_BTN}

Fill Shipping Information
    [Arguments]    ${fname}    ${lname}    ${zip}
    Input Text     ${FIRST_NAME}    ${fname}
    Input Text     ${LAST_NAME}     ${lname}
    Input Text     ${ZIP_CODE}      ${zip}
    Click Button    ${CONTINUE_BTN}

Finish Order
    Click Button    ${FINISH_BTN}

Verify Success Message
    Element Should Contain    ${SUCCESS_MSG}    Thank you for your order!
