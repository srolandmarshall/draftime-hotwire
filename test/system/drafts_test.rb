require "application_system_test_case"

class DraftsTest < ApplicationSystemTestCase
  setup do
    @draft = drafts(:one)
  end

  test "visiting the index" do
    visit drafts_url
    assert_selector "h1", text: "Drafts"
  end

  test "creating a Draft" do
    visit drafts_url
    click_on "New Draft"

    fill_in "League", with: @draft.league
    fill_in "Title", with: @draft.title
    click_on "Create Draft"

    assert_text "Draft was successfully created"
    click_on "Back"
  end

  test "updating a Draft" do
    visit drafts_url
    click_on "Edit", match: :first

    fill_in "League", with: @draft.league
    fill_in "Title", with: @draft.title
    click_on "Update Draft"

    assert_text "Draft was successfully updated"
    click_on "Back"
  end

  test "destroying a Draft" do
    visit drafts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Draft was successfully destroyed"
  end
end
