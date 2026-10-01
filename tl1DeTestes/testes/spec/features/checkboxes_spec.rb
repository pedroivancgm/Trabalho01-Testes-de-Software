require "spec_helper"

RSpec.describe "Checkboxes", type: :feature do
    it "test marcar checkbox 1" do
        visit "/checkboxes"
        checkboxes = all('input[type="checkbox"]')
        checkboxes[0].check
        expect(checkboxes[0]).to be_checked
    end

    it "test marcar checkbox 2" do
        visit "/checkboxes"
        checkboxes = all('input[type="checkbox"]')
        checkboxes[1].check
        expect(checkboxes[1]).to be_checked
    end

    it "test desmarcar checkbox 1" do
        visit "/checkboxes"
        checkboxes = all('input[type="checkbox"]')
        checkboxes[0].uncheck
        expect(checkboxes[0]).not_to be_checked
    end

    it "test desmarcar checkbox 2" do
        visit "/checkboxes"
        checkboxes = all('input[type="checkbox"]')
        checkboxes[1].uncheck
        expect(checkboxes[1]).not_to be_checked
    end
    
end

