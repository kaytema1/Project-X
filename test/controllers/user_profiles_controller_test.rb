require 'test_helper'

class UserProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_profile = user_profiles(:one)
  end

  test "should get index" do
    get user_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_user_profile_url
    assert_response :success
  end

  test "should create user_profile" do
    assert_difference('UserProfile.count') do
      post user_profiles_url, params: { user_profile: { about_me: @user_profile.about_me, address: @user_profile.address, city: @user_profile.city, country: @user_profile.country, country_code: @user_profile.country_code, gender: @user_profile.gender, phone: @user_profile.phone, unit_of_measure: @user_profile.unit_of_measure, user_id: @user_profile.user_id, user_type: @user_profile.user_type } }
    end

    assert_redirected_to user_profile_url(UserProfile.last)
  end

  test "should show user_profile" do
    get user_profile_url(@user_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_profile_url(@user_profile)
    assert_response :success
  end

  test "should update user_profile" do
    patch user_profile_url(@user_profile), params: { user_profile: { about_me: @user_profile.about_me, address: @user_profile.address, city: @user_profile.city, country: @user_profile.country, country_code: @user_profile.country_code, gender: @user_profile.gender, phone: @user_profile.phone, unit_of_measure: @user_profile.unit_of_measure, user_id: @user_profile.user_id, user_type: @user_profile.user_type } }
    assert_redirected_to user_profile_url(@user_profile)
  end

  test "should destroy user_profile" do
    assert_difference('UserProfile.count', -1) do
      delete user_profile_url(@user_profile)
    end

    assert_redirected_to user_profiles_url
  end
end
