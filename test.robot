*** Settings ***
Library  SeleniumLibrary
Resource    common.robot

*** Variable ***
${login_btn}    dt_login_button
${email}     name=email
${password}     //*[@type="password"]
${login_oauth_btn}      //*[text()="Log in"]
${core_acc_info}        //*[@id="dt_core_account-info_acc-info"]
${switch_to_demo}       //*[@id="dt_core_account-switcher_demo-tab"]
${click_onto_demo}      //*[@id="dt_VRTC4795349"]
${loading_chart}        //*[@id="chart_container"]
${menu}                 //div[@class="cq-symbol-select-btn"]
${tradebox}         //*[@id="trade"]/div/div[1]/div/div/div[1]/div[1]/div/div[2]/div/div/div[2]/div[2]/div
#${pick_volatility_10}       //*[@class="sc-mcd__item sc-mcd__item--1HZ10V sc-mcd__item--selected "]
${pick_volatility_10}   //*[@class="ic-icon ic-1HZ10V"]
${open_setting}     //div[@id="duration_amount_selector"]
#//div[@class="acc-switcher__account" and //div/span[contains(text(),"Demo")]]
${votality_tab}     //div[@class="cq-symbol-select-btn"]
${click_on_rise}         //*[@id="dt_purchase_call_button"]
${forex_tab}       //div[@class="sc-mcd__filter__item "]/span[@class="ic-icon ic-forex"]
${click_on_aud/usd}         //div[@class="sc-mcd__category__content sc-mcd__category__content--major-pairs sc-mcd__category__content--has-subcategory"]/div[@class="sc-mcd__item sc-mcd__item--frxAUDUSD "]
${click_on_trade_types}         //div[@data-testid="dt_contract_dropdown"]
${click_high_lower_option}       //div[@class="dc-vertical-tab__content-container"]/div[@class="dc-themed-scrollbars dc-themed-scrollbars__autohide"]/div[@class="contract-type-list"]/div[@class="contract-type-list__wrapper"]/div[@id="dt_contract_high_low_item"]
${click_on_setting}         //div[@id="duration_amount_selector"]
${input_field}     //input[@type="number"]
${payout_button}        //button[@id="dc_payout_toggle_item"]
${payout_input_field}     //input[@id="dt_amount_input"]
${click_on_lower_button}   //button[@id="dt_purchase_put_button"]
${barrier_input_field}      //input[@id="dt_barrier_1_input"]
${synthetic_tab}        //div[@class="sc-mcd__filter__item sc-mcd__filter__item--selected"]/span[@class="ic-icon ic-synthetic_index"]
${syntehtic_50_option}       //div[@class="sc-mcd__category sc-mcd__category--synthetic_index"]/div[@class="sc-mcd__category__content sc-mcd__category__content--continuous-indices sc-mcd__category__content--has-subcategory"]/div[@class="sc-mcd__item sc-mcd__item--R_50 "]
${pick_multipier}        //div[@class="dc-vertical-tab__content-container"]/div//div[@class="contract-type-list__wrapper"]
${current_value}
${value_length}
*** Keyword ***


*** Test Cases ***
Login
    Login   ${my_email}  ${my_pw}
SwitchAcc
    sleep   5
    SwitchAcc
BuyRiseContract
    sleep    10
    buyrisecontract
BuyLowerContract
    buylowercontract
CheckBarrierError
    CheckRelativeBarrierError
CheckMultipierContractParameter
    CheckMultipierParameter