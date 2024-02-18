require "test_helper"

class User::RecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_records_create_url
    assert_response :success
  end

  test "should get update" do
    get user_records_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_records_destroy_url
    assert_response :success
  end
end
