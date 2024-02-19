require "test_helper"

class User::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_users_index_url
    assert_response :success
  end

  test "should get show" do
    get user_users_show_url
    assert_response :success
  end

  test "should get update" do
    get user_users_update_url
    assert_response :success
  end

  test "should get quit" do
    get user_users_quit_url
    assert_response :success
  end

  test "should get withdrow" do
    get user_users_withdrow_url
    assert_response :success
  end

  test "should get follows" do
    get user_users_follows_url
    assert_response :success
  end

  test "should get followers" do
    get user_users_followers_url
    assert_response :success
  end
end
