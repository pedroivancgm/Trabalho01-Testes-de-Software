require "spec_helper"

RSpec.describe "AlertasJS", type: :feature do
    it "teste clicar e receber alerta js" do
        visit "/javascript_alerts"
        click_button "Click for JS Alert"
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content("You successfully clicked an alert")
    end

    it "teste botão 'click for js confirm' e receber alerta js e clicar em cancelar" do
        visit "/javascript_alerts"
        click_button "Click for JS Confirm"
        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content("You clicked: Cancel")
    end

    it "teste botão 'click for js confirm' e receber alerta js e clicar em ok" do
        visit "/javascript_alerts"
        click_button "Click for JS Confirm"
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content("You clicked: Ok")
    end

    it "teste botão 'click for js prompt' e receber alerta js preencher com 'prompt preenchido' " do
        visit "/javascript_alerts"
        click_button "Click for JS Prompt"
        page.driver.browser.switch_to.alert.send_keys("prompt preenchido")
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content("You entered: prompt preenchido")
    end

    it "teste botão 'click for js prompt' e receber alerta js preencher com '    ' e ok" do
        visit "/javascript_alerts"
        click_button "Click for JS Prompt"
        page.driver.browser.switch_to.alert.send_keys("    ")
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content("You entered:")
    end

    it "teste botão 'click for js prompt' e receber alerta js preencher com 'cancelar' e cancelar" do
        visit "/javascript_alerts"
        click_button "Click for JS Prompt"
        page.driver.browser.switch_to.alert.send_keys("cancelar")
        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content("You entered: null")
    end

end