require 'test_helper'

class ClothingLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clothing_line = clothing_lines(:one)
  end

  test "should get index" do
    get clothing_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_clothing_line_url
    assert_response :success
  end

  test "should create clothing_line" do
    assert_difference('ClothingLine.count') do
      post clothing_lines_url, params: { clothing_line: { description: @clothing_line.description, name: @clothing_line.name, tag_line: @clothing_line.tag_line, user_id: @clothing_line.user_id } }
    end

    assert_redirected_to clothing_line_url(ClothingLine.last)
  end

  test "should show clothing_line" do
    get clothing_line_url(@clothing_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_clothing_line_url(@clothing_line)
    assert_response :success
  end

  test "should update clothing_line" do
    patch clothing_line_url(@clothing_line), params: { clothing_line: { description: @clothing_line.description, name: @clothing_line.name, tag_line: @clothing_line.tag_line, user_id: @clothing_line.user_id } }
    assert_redirected_to clothing_line_url(@clothing_line)
  end

  test "should destroy clothing_line" do
    assert_difference('ClothingLine.count', -1) do
      delete clothing_line_url(@clothing_line)
    end

    assert_redirected_to clothing_lines_url
  end
end
