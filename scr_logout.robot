*** Settings ***
Suite Teardown                              Close All Browsers
Library                                     Selenium2Library                    timeout=15
Library                                     String
Library                                     Dialogs
Resource                                    res_main.robot
Resource                                    res_logout.robot
Resource                                    res_login.robot


*** Test Case ***
logout          [Documentation]         logout
                start robot
                login registered account
                wait until element is visible        ${btn_logOut}
                click element       ${btn_logOut}
                sleep       3s
                page should contain element         ${fld_email} 