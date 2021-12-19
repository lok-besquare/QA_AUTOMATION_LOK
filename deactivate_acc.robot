*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    common.robot

*** Variable ***
${login_btn}    dt_login_button
${email}     name=email
${password}     //*[@type="password"]
${login_oauth_btn}      //*[text()="Log in"]
${go_to_setting_page}       //*[@id="dt_core_header_acc-info-container"]/div[2]/div/div/span/a
${go_to_deactivate_acc}     //*[@id="dc_deactivate-account_link"]
${continue_button}      //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/button
${check_box_1}      //*[text()="I have other financial priorities."]
${check_box_2}      //*[text()="I want to stop myself from trading."]
${continue_inside_question_page}        //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/div[3]/div[2]/button[2]
${confirm_deactivate_button}            //*[@id="modal_root"]/div/div/div/div[2]/button[2]
${go_back_button}        //*[@id="modal_root"]/div/div/div/div[2]/button[1]
${text_field_1}         //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/div/div/form/div[1]/textarea


*** Test Cases ***
Login
    Login   ${my_email}  ${my_pw}
Gotodeactivateacc
    GotoDeactivateacc
CheckQuestion
    ContinuetoQuestion
