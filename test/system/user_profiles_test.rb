require "application_system_test_case"

class UserProfilesTest < ApplicationSystemTestCase
  setup do
    @user_profile = user_profiles(:one)
  end

  test "visiting the index" do
    visit user_profiles_url
    assert_selector "h1", text: "User Profiles"
  end

  test "creating a User profile" do
    visit user_profiles_url
    click_on "New User Profile"

    fill_in "About me", with: @user_profile.about_me
    fill_in "Address", with: @user_profile.address
    fill_in "City", with: @user_profile.city
    fill_in "Country", with: @user_profile.country
    fill_in "Country code", with: @user_profile.country_code
    fill_in "Gender", with: @user_profile.gender
    fill_in "Phone", with: @user_profile.phone
    fill_in "Unit of measure", with: @user_profile.unit_of_measure
    fill_in "User", with: @user_profile.user_id
    fill_in "User type", with: @user_profile.user_type
    click_on "Create User profile"

    assert_text "User profile was successfully created"
    click_on "Back"
  end

  test "updating a User profile" do
    visit user_profiles_url
    click_on "Edit", match: :first

    fill_in "About me", with: @user_profile.about_me
    fill_in "Address", with: @user_profile.address
    fill_in "City", with: @user_profile.city
    fill_in "Country", with: @user_profile.country
    fill_in "Country code", with: @user_profile.country_code
    fill_in "Gender", with: @user_profile.gender
    fill_in "Phone", with: @user_profile.phone
    fill_in "Unit of measure", with: @user_profile.unit_of_measure
    fill_in "User", with: @user_profile.user_id
    fill_in "User type", with: @user_profile.user_type
    click_on "Update User profile"

    assert_text "User profile was successfully updated"
    click_on "Back"
  end

  test "destroying a User profile" do
    visit user_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User profile was successfully destroyed"
  end
end
