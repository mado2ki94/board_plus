require 'test_helper'

class MythreadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mythreads_index_url
    assert_response :success
  end

  test "should get new" do
    get mythreads_new_url
    assert_response :success
  end

  test "should get create" do
    get mythreads_create_url
    assert_response :success
  end

  test "should get edit" do
    get mythreads_edit_url
    assert_response :success
  end

  test "should get update" do
    get mythreads_update_url
    assert_response :success
  end

  test "should get destroy" do
    get mythreads_destroy_url
    assert_response :success
  end

  test "should get show" do
    get mythreads_show_url
    assert_response :success
  end

end
