*** Settings ***
Suite Teardown                              Close All Browsers
Library                                     Selenium2Library                    timeout=15
Library                                     String
Library                                     Dialogs

*** Variable ***
${mainSite}                                 http://automationpractice.com/index.php
${loginSite}                                http://automationpractice.com/index.php?controller=authentication&back=my-account
${email}                                    cc@g.com
${password}                                 123456789
${browser}                                  googlechrome

*** Keywords ***
start robot
    Open Browser                            ${mainSite}                  googlechrome
    Maximize Browser Window
    # Set Selenium Speed                      1
    Log To Console                          \n
    Log To Console                          successfully navigated to ${mainSite}

