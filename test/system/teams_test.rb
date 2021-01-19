require "application_system_test_case"

class TeamsTest < ApplicationSystemTestCase
  setup do
    @team = teams(:one)
  end

  test "visiting the index" do
    visit teams_url
    assert_selector "h1", text: "Teams"
  end

  test "creating a Team" do
    visit teams_url
    click_on "New Team"

    fill_in "Code", with: @team.code
    fill_in "Full name", with: @team.full_name
    fill_in "League", with: @team.league_id
    fill_in "Players", with: @team.players
    fill_in "Short name", with: @team.short_name
    click_on "Create Team"

    assert_text "Team was successfully created"
    click_on "Back"
  end

  test "updating a Team" do
    visit teams_url
    click_on "Edit", match: :first

    fill_in "Code", with: @team.code
    fill_in "Full name", with: @team.full_name
    fill_in "League", with: @team.league_id
    fill_in "Players", with: @team.players
    fill_in "Short name", with: @team.short_name
    click_on "Update Team"

    assert_text "Team was successfully updated"
    click_on "Back"
  end

  test "destroying a Team" do
    visit teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team was successfully destroyed"
  end
end
