require "application_system_test_case"

class ClothingLinesTest < ApplicationSystemTestCase
  setup do
    @clothing_line = clothing_lines(:one)
  end

  test "visiting the index" do
    visit clothing_lines_url
    assert_selector "h1", text: "Clothing Lines"
  end

  test "creating a Clothing line" do
    visit clothing_lines_url
    click_on "New Clothing Line"

    fill_in "Description", with: @clothing_line.description
    fill_in "Name", with: @clothing_line.name
    fill_in "Tag line", with: @clothing_line.tag_line
    fill_in "User", with: @clothing_line.user_id
    click_on "Create Clothing line"

    assert_text "Clothing line was successfully created"
    click_on "Back"
  end

  test "updating a Clothing line" do
    visit clothing_lines_url
    click_on "Edit", match: :first

    fill_in "Description", with: @clothing_line.description
    fill_in "Name", with: @clothing_line.name
    fill_in "Tag line", with: @clothing_line.tag_line
    fill_in "User", with: @clothing_line.user_id
    click_on "Update Clothing line"

    assert_text "Clothing line was successfully updated"
    click_on "Back"
  end

  test "destroying a Clothing line" do
    visit clothing_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clothing line was successfully destroyed"
  end
end
