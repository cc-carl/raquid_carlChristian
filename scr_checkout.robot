*** Settings ***
Suite Teardown                              Close All Browsers
Library                                     Selenium2Library                    timeout=15
Library                                     String
Library                                     Dialogs
Resource                                    res_main.robot
Resource                                    res_login.robot
Resource                                    res_checkout.robot


*** Test Case ***
checkout            [Documentation]        checkout fpr payment 
                    start robot
                    login registered account
                    Click Link      ${tab_tshirt}
                    Click Element       ${image_item}
                    Wait Until Element Is Visible       ${btn_adToCart}
                    Click Element       ${btn_adToCart}
                    Page Should Contain     ${validate_addToCart}
                    sleep   3s
                    Click Element       ${btn_checkOut1}
                    sleep   3s
                    Click Element       ${btn_checkOut2}
                    sleep   3s
                    click Element       ${btn_checkOut3}
                    sleep   3s
                    click Element       ${btn_checkOut4}
                    sleep   3s
                    click Element       ${btn_checkOut5}
                    sleep   3s
                    click Element       ${btn_checkOut6}
                    sleep   3s
                    click Element       ${btn_checkOut7}
                    sleep   3s
                    Close Browser

    

