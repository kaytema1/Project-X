require "application_system_test_case"

class FemaleMeasurementsTest < ApplicationSystemTestCase
  setup do
    @female_measurement = female_measurements(:one)
  end

  test "visiting the index" do
    visit female_measurements_url
    assert_selector "h1", text: "Female Measurements"
  end

  test "creating a Female measurement" do
    visit female_measurements_url
    click_on "New Female Measurement"

    fill_in "Apex to apex", with: @female_measurement.apex_to_apex
    fill_in "Arm length", with: @female_measurement.arm_length
    fill_in "Arm width", with: @female_measurement.arm_width
    fill_in "Back", with: @female_measurement.back
    fill_in "Back waist", with: @female_measurement.back_waist
    fill_in "Bust", with: @female_measurement.bust
    fill_in "Crotch", with: @female_measurement.crotch
    fill_in "Height", with: @female_measurement.height
    fill_in "Hip", with: @female_measurement.hip
    fill_in "Note", with: @female_measurement.note
    fill_in "Shoulder to apex", with: @female_measurement.shoulder_to_apex
    fill_in "Trouser length", with: @female_measurement.trouser_length
    fill_in "User", with: @female_measurement.user_id
    fill_in "Waist", with: @female_measurement.waist
    click_on "Create Female measurement"

    assert_text "Female measurement was successfully created"
    click_on "Back"
  end

  test "updating a Female measurement" do
    visit female_measurements_url
    click_on "Edit", match: :first

    fill_in "Apex to apex", with: @female_measurement.apex_to_apex
    fill_in "Arm length", with: @female_measurement.arm_length
    fill_in "Arm width", with: @female_measurement.arm_width
    fill_in "Back", with: @female_measurement.back
    fill_in "Back waist", with: @female_measurement.back_waist
    fill_in "Bust", with: @female_measurement.bust
    fill_in "Crotch", with: @female_measurement.crotch
    fill_in "Height", with: @female_measurement.height
    fill_in "Hip", with: @female_measurement.hip
    fill_in "Note", with: @female_measurement.note
    fill_in "Shoulder to apex", with: @female_measurement.shoulder_to_apex
    fill_in "Trouser length", with: @female_measurement.trouser_length
    fill_in "User", with: @female_measurement.user_id
    fill_in "Waist", with: @female_measurement.waist
    click_on "Update Female measurement"

    assert_text "Female measurement was successfully updated"
    click_on "Back"
  end

  test "destroying a Female measurement" do
    visit female_measurements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Female measurement was successfully destroyed"
  end
end
