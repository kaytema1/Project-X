require "application_system_test_case"

class MaleMeasurementsTest < ApplicationSystemTestCase
  setup do
    @male_measurement = male_measurements(:one)
  end

  test "visiting the index" do
    visit male_measurements_url
    assert_selector "h1", text: "Male Measurements"
  end

  test "creating a Male measurement" do
    visit male_measurements_url
    click_on "New Male Measurement"

    fill_in "Arm circumference", with: @male_measurement.arm_circumference
    fill_in "Arm length", with: @male_measurement.arm_length
    fill_in "Around ankle bar", with: @male_measurement.around_ankle_bar
    fill_in "Back width", with: @male_measurement.back_width
    fill_in "Chest width", with: @male_measurement.chest_width
    fill_in "Hip", with: @male_measurement.hip
    fill_in "Hip length", with: @male_measurement.hip_length
    fill_in "Knee", with: @male_measurement.knee
    fill_in "Length", with: @male_measurement.length
    fill_in "Note", with: @male_measurement.note
    fill_in "Tie", with: @male_measurement.tie
    fill_in "User", with: @male_measurement.user_id
    fill_in "Waist", with: @male_measurement.waist
    click_on "Create Male measurement"

    assert_text "Male measurement was successfully created"
    click_on "Back"
  end

  test "updating a Male measurement" do
    visit male_measurements_url
    click_on "Edit", match: :first

    fill_in "Arm circumference", with: @male_measurement.arm_circumference
    fill_in "Arm length", with: @male_measurement.arm_length
    fill_in "Around ankle bar", with: @male_measurement.around_ankle_bar
    fill_in "Back width", with: @male_measurement.back_width
    fill_in "Chest width", with: @male_measurement.chest_width
    fill_in "Hip", with: @male_measurement.hip
    fill_in "Hip length", with: @male_measurement.hip_length
    fill_in "Knee", with: @male_measurement.knee
    fill_in "Length", with: @male_measurement.length
    fill_in "Note", with: @male_measurement.note
    fill_in "Tie", with: @male_measurement.tie
    fill_in "User", with: @male_measurement.user_id
    fill_in "Waist", with: @male_measurement.waist
    click_on "Update Male measurement"

    assert_text "Male measurement was successfully updated"
    click_on "Back"
  end

  test "destroying a Male measurement" do
    visit male_measurements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Male measurement was successfully destroyed"
  end
end
