require "application_system_test_case"

class DonorsTest < ApplicationSystemTestCase
  setup do
    @donor = donors(:one)
  end

  test "visiting the index" do
    visit donors_url
    assert_selector "h1", text: "Donors"
  end

  test "creating a Donor" do
    visit donors_url
    click_on "New Donor"

    fill_in "Email", with: @donor.email
    fill_in "Idade", with: @donor.idade
    fill_in "Nome", with: @donor.nome
    fill_in "Senha", with: @donor.senha
    fill_in "Tipo", with: @donor.tipo
    click_on "Create Donor"

    assert_text "Donor was successfully created"
    click_on "Back"
  end

  test "updating a Donor" do
    visit donors_url
    click_on "Edit", match: :first

    fill_in "Email", with: @donor.email
    fill_in "Idade", with: @donor.idade
    fill_in "Nome", with: @donor.nome
    fill_in "Senha", with: @donor.senha
    fill_in "Tipo", with: @donor.tipo
    click_on "Update Donor"

    assert_text "Donor was successfully updated"
    click_on "Back"
  end

  test "destroying a Donor" do
    visit donors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Donor was successfully destroyed"
  end
end
