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
${go_to_api_token}      //*[@id="dc_api-token_link"]
${api_token_page}          //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div
${read_scope}        //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[1]/div[2]/div/div/div/div[1]
${trade_scope}       //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[1]/div[2]/div/div/div/div[2]
${payments_scope}       //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[1]/div[2]/div/div/div/div[3]
${admin_scope}       //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[1]/div[2]/div/div/div/div[4]
${trading_information}       //*[@id="app_contents"]/div/div/div/div/div[2]/div/div[2]/div/section/div/div/form/div/div[1]/div[2]/div/div/div/div[5]
${token_name_with_spacebar}         a b b
${empty_value}


*** Test Cases ***
Login
    Login   ${my_email}  ${my_pw}
GotoSettingPage
    GotoSettingPage
TokenCreateTestCase1
    TokenCreateWithOneScope



