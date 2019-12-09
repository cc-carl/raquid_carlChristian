*** Settings ***
Suite Teardown                              Close All Browsers
Library                                     Selenium2Library                    timeout=15
Library                                     String
Library                                     Dialogs
Resource                                    res_adding_items_to_cart.robot
Resource                                    res_checkout_for_payment.robot
Resource                                    res_login.robot
Resource                                    res_main.robot
Resource                                    scr_adding_items_to_cart.robot
Resource                                    scr_checkout_for_payment.robot
Resource                                    scr_Login.robot
Resource                                    scr_logout.robot
Resource                                    scr_select_of_cart.robot

*** Test Case ***
login       [DOCUMENTATION]                         login credentials from createAccount.robot
            start robot
            Page Should Contain Link        ${link_signIn}
            Click Link          ${link_signIn}
            input valid email
            input valid password
            click submit button
            Page Should Contain         My account
            Close Browser

