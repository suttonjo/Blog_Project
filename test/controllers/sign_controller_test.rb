require "test_helper"

class SignControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sign_new_url
    assert_response :success
  end

  test "should get create" do
    get sign_create_url
    assert_response :success
  end
end
