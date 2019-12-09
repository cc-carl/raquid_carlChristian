*** Settings ***
Suite Teardown                              Close All Browsers
Library                                     Selenium2Library                    timeout=15
Library                                     String
Library                                     Dialogs


*** Variable ***
${btn_checkOut1}        //*[@id="layer_cart"]/div[1]/div[2]/div[4]/a/span
${btn_checkOut2}        //*[@id="center_column"]/p[2]/a[1]/span
${btn_checkOut3}        //*[@id="center_column"]/form/p/button/span
${btn_checkOut4}        //*[@id="cgv"]
${btn_checkOut5}        //*[@id="form"]/p/button/span
${btn_checkOut6}        //*[@id="HOOK_PAYMENT"]/div[1]/div/p/a/span
${btn_checkOut7}        //*[@id="cart_navigation"]/button/span      
