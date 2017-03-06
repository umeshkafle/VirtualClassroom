require 'test_helper'

class UploadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get uploads_index_url
    assert_response :success
  end

  test "should get show" do
    get uploads_show_url
    assert_response :success
  end

  test "should get new" do
    get uploads_new_url
    assert_response :success
  end

  test "should get create" do
    get uploads_create_url
    assert_response :success
  end

  test "should get edit" do
    get uploads_edit_url
    assert_response :success
  end

  test "should get update" do
    get uploads_update_url
    assert_response :success
  end

  test "should get destroy" do
    get uploads_destroy_url
    assert_response :success
  end

end
