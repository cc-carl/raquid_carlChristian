*** Settings ***
Suite Teardown                              Close All Browsers
Library                                     Selenium2Library                    timeout=15
Library                                     String
Library                                     Dialogs

*** Variable ***
${link_signIn}                              //*[@id="header"]/div[2]/div/div/nav/div[1]/a
${fld_email}                                //*[@id="email"]
${fld_password}                             //*[@id="passwd"]
${btn_submit}                               //*[@id="SubmitLogin"]

*** Keywords ***
note
    Pause Execution                         Description: login module \n Credentials: ${email} | ${password} \n By: Carl Christian Raquid \n \n Press OK to proceed...
input valid email
    Input Text                              ${fld_email}        ${email}
input valid password
    Input Text                              ${fld_password}       ${password}
input invalid email
    Input Text                              ${fld_email}        random123
input invalid password
    Input Text                              ${fld_password}       random123
click submit button
    Click Button                            ${btn_submit}
login registered account
    Page Should Contain Link        ${link_signIn}
    Click Link          ${link_signIn}
    input valid email
    input valid password
    click submit button
    Page Should Contain         My account

