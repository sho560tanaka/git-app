require "application_system_test_case"

class ArthiclesTest < ApplicationSystemTestCase
  setup do
    @arthicle = arthicles(:one)
  end

  test "visiting the index" do
    visit arthicles_url
    assert_selector "h1", text: "Arthicles"
  end

  test "creating a Arthicle" do
    visit arthicles_url
    click_on "New Arthicle"

    fill_in "Author", with: @arthicle.author
    fill_in "Text", with: @arthicle.text
    fill_in "Title", with: @arthicle.title
    click_on "Create Arthicle"

    assert_text "Arthicle was successfully created"
    click_on "Back"
  end

  test "updating a Arthicle" do
    visit arthicles_url
    click_on "Edit", match: :first

    fill_in "Author", with: @arthicle.author
    fill_in "Text", with: @arthicle.text
    fill_in "Title", with: @arthicle.title
    click_on "Update Arthicle"

    assert_text "Arthicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Arthicle" do
    visit arthicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Arthicle was successfully destroyed"
  end
end
