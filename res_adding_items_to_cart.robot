*** Settings ***
Suite Teardown                              Close All Browsers
Library                                     Selenium2Library                    timeout=15
Library                                     String
Library                                     Dialogs

*** Variable ***
${tab_tshirt}                               //*[@id="block_top_menu"]/ul/li[3]/a
${btn_adToCart}                             //*[@id="add_to_cart"]/button/span
${image_item}                               //*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
${validate_addToCart}                       Product successfully added to your shopping cart