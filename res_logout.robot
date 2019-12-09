*** Settings ***
Suite Teardown                              Close All Browsers
Library                                     Selenium2Library                    timeout=15
Library                                     String
Library                                     Dialogs

*** Variable ***
${btn_logOut}                               //*[contains(@class, 'logout')]