require 'test_helper'

class ArthiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arthicle = arthicles(:one)
  end

  test "should get index" do
    get arthicles_url
    assert_response :success
  end

  test "should get new" do
    get new_arthicle_url
    assert_response :success
  end

  test "should create arthicle" do
    assert_difference('Arthicle.count') do
      post arthicles_url, params: { arthicle: { author: @arthicle.author, text: @arthicle.text, title: @arthicle.title } }
    end

    assert_redirected_to arthicle_url(Arthicle.last)
  end

  test "should show arthicle" do
    get arthicle_url(@arthicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_arthicle_url(@arthicle)
    assert_response :success
  end

  test "should update arthicle" do
    patch arthicle_url(@arthicle), params: { arthicle: { author: @arthicle.author, text: @arthicle.text, title: @arthicle.title } }
    assert_redirected_to arthicle_url(@arthicle)
  end

  test "should destroy arthicle" do
    assert_difference('Arthicle.count', -1) do
      delete arthicle_url(@arthicle)
    end

    assert_redirected_to arthicles_url
  end
end
