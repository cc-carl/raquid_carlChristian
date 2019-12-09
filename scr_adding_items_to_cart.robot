*** Settings ***
Suite Teardown                              Close All Browsers
Library                                     Selenium2Library                    timeout=15
Library                                     String
Library                                     Dialogs
Resource                                    res_login.robot
Resource                                    res_main.robot
                                    

*** Test Case ***
addItem             [Documentation]         adding items to cart
                    start robot
                    login registered account
                    Click Link      ${tab_tshirt}
                    Click Element       ${image_item}
                    Wait Until Element Is Visible       ${btn_adToCart}
                    Click Element       ${btn_adToCart}
                    Page Should Contain     ${validate_addToCart}
                    Close Browser




