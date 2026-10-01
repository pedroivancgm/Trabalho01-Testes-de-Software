require "spec_helper"

RSpec.describe "Login", type: :feature do
  it "teste de login válido" do
    visit "/login"
    fill_in "username", with: "tomsmith"
    fill_in "password", with: "SuperSecretPassword!"
    click_button "Login"
    expect(page).to have_content("You logged into a secure area!")
  end

  it "teste de login inválido" do
    visit "/login"
    fill_in "username", with: "tomsmith"
    fill_in "password", with: "errada"
    click_button "Login"
    expect(page).to have_content("Your password is invalid!")
  end

  it "teste de login com campo de email contendo somente espaços" do
    visit "/login"
    fill_in "username", with: "    "
    fill_in "password", with: "SuperSecretPassword!"
    click_button "Login"
    expect(page).to have_content("Your username is invalid!")
  end
  it "teste de login com campo de senha contendo somente espaços" do
    visit "/login"
    fill_in "username", with: "tomsmith"
    fill_in "password", with: "    "
    click_button "Login"
    expect(page).to have_content("Your password is invalid!")
  end

  it "teste de login com campos de email e senha contendo somente espaços" do
    visit "/login"
    fill_in "username", with: "    "
    fill_in "password", with: "    "
    click_button "Login"
    expect(page).to have_content("Your username is invalid!")
  end

  it "teste de login com campos de email contendo somente 5 caracteres especiais" do
    visit "/login"
    fill_in "username", with: "!@#$%"
    fill_in "password", with: "SuperSecretPassword!"
    click_button "Login"
    expect(page).to have_content("Your username is invalid!")
  end

  it "teste de login com campos de senha contendo somente 5 caracteres especiais" do
    visit "/login"
    fill_in "username", with: "tomsmith"
    fill_in "password", with: "!@#$%"
    click_button "Login"
    expect(page).to have_content("Your password is invalid!")
  end
  
  it "teste de login com campos de email e senha contendo somente 5 caracteres especiais" do
    visit "/login"
    fill_in "username", with: "!@#$%"
    fill_in "password", with: "!@#$%"
    click_button "Login"
    expect(page).to have_content("Your username is invalid!")
  end

  it "teste de login com campos de email e senha contendo somente 5 números" do
    visit "/login"
    fill_in "username", with: "12345"
    fill_in "password", with: "12345"
    click_button "Login"
    expect(page).to have_content("Your username is invalid!")
  end 


end