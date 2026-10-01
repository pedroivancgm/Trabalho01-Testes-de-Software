require "spec_helper"

RSpec.describe "Homepage", type: :feature do

    it "entrar na página de checkbox" do
        visit "/"
        click_link "Checkboxes"
        expect(page).to have_content("Checkboxes")
    end

end