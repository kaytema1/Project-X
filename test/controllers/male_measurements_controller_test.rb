require 'test_helper'

class MaleMeasurementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @male_measurement = male_measurements(:one)
  end

  test "should get index" do
    get male_measurements_url
    assert_response :success
  end

  test "should get new" do
    get new_male_measurement_url
    assert_response :success
  end

  test "should create male_measurement" do
    assert_difference('MaleMeasurement.count') do
      post male_measurements_url, params: { male_measurement: { arm_circumference: @male_measurement.arm_circumference, arm_length: @male_measurement.arm_length, around_ankle_bar: @male_measurement.around_ankle_bar, back_width: @male_measurement.back_width, chest_width: @male_measurement.chest_width, hip: @male_measurement.hip, hip_length: @male_measurement.hip_length, knee: @male_measurement.knee, length: @male_measurement.length, note: @male_measurement.note, tie: @male_measurement.tie, user_id: @male_measurement.user_id, waist: @male_measurement.waist } }
    end

    assert_redirected_to male_measurement_url(MaleMeasurement.last)
  end

  test "should show male_measurement" do
    get male_measurement_url(@male_measurement)
    assert_response :success
  end

  test "should get edit" do
    get edit_male_measurement_url(@male_measurement)
    assert_response :success
  end

  test "should update male_measurement" do
    patch male_measurement_url(@male_measurement), params: { male_measurement: { arm_circumference: @male_measurement.arm_circumference, arm_length: @male_measurement.arm_length, around_ankle_bar: @male_measurement.around_ankle_bar, back_width: @male_measurement.back_width, chest_width: @male_measurement.chest_width, hip: @male_measurement.hip, hip_length: @male_measurement.hip_length, knee: @male_measurement.knee, length: @male_measurement.length, note: @male_measurement.note, tie: @male_measurement.tie, user_id: @male_measurement.user_id, waist: @male_measurement.waist } }
    assert_redirected_to male_measurement_url(@male_measurement)
  end

  test "should destroy male_measurement" do
    assert_difference('MaleMeasurement.count', -1) do
      delete male_measurement_url(@male_measurement)
    end

    assert_redirected_to male_measurements_url
  end
end
