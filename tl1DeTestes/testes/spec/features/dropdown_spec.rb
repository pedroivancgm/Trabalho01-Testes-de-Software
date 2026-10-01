require "spec_helper"

RSpec.describe "Dropdown", type: :feature do
    #Descreve o que será feito neste teste
  it "seleciona a Option 2" do
    # Visita a página para testar dropdown
    visit "/dropdown"
    # Seleciona a "Option 2" da lista clicável
    select "Option 2", from: "dropdown"

    # "espera-se" que o valor selecionado em dropdown seja igual a 2 (to equal 2)
    expect(find("#dropdown").value).to eq("2")
  end

  it "teste selecionar a Option 1" do
    visit "/dropdown"
    select "Option 1", from: "dropdown"
    expect(find("#dropdown").value).to eq("1")
  end

  it "teste selecionar option inexistente" do
    visit "/dropdown"
    expect{ select "Option 3", from: "dropdown" }.to raise_error(Capybara::ElementNotFound)
  end
  
end

