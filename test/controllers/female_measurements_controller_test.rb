require 'test_helper'

class FemaleMeasurementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @female_measurement = female_measurements(:one)
  end

  test "should get index" do
    get female_measurements_url
    assert_response :success
  end

  test "should get new" do
    get new_female_measurement_url
    assert_response :success
  end

  test "should create female_measurement" do
    assert_difference('FemaleMeasurement.count') do
      post female_measurements_url, params: { female_measurement: { apex_to_apex: @female_measurement.apex_to_apex, arm_length: @female_measurement.arm_length, arm_width: @female_measurement.arm_width, back: @female_measurement.back, back_waist: @female_measurement.back_waist, bust: @female_measurement.bust, crotch: @female_measurement.crotch, height: @female_measurement.height, hip: @female_measurement.hip, note: @female_measurement.note, shoulder_to_apex: @female_measurement.shoulder_to_apex, trouser_length: @female_measurement.trouser_length, user_id: @female_measurement.user_id, waist: @female_measurement.waist } }
    end

    assert_redirected_to female_measurement_url(FemaleMeasurement.last)
  end

  test "should show female_measurement" do
    get female_measurement_url(@female_measurement)
    assert_response :success
  end

  test "should get edit" do
    get edit_female_measurement_url(@female_measurement)
    assert_response :success
  end

  test "should update female_measurement" do
    patch female_measurement_url(@female_measurement), params: { female_measurement: { apex_to_apex: @female_measurement.apex_to_apex, arm_length: @female_measurement.arm_length, arm_width: @female_measurement.arm_width, back: @female_measurement.back, back_waist: @female_measurement.back_waist, bust: @female_measurement.bust, crotch: @female_measurement.crotch, height: @female_measurement.height, hip: @female_measurement.hip, note: @female_measurement.note, shoulder_to_apex: @female_measurement.shoulder_to_apex, trouser_length: @female_measurement.trouser_length, user_id: @female_measurement.user_id, waist: @female_measurement.waist } }
    assert_redirected_to female_measurement_url(@female_measurement)
  end

  test "should destroy female_measurement" do
    assert_difference('FemaleMeasurement.count', -1) do
      delete female_measurement_url(@female_measurement)
    end

    assert_redirected_to female_measurements_url
  end
end
