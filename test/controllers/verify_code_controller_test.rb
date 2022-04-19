require "test_helper"

class VerifyCodeControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get verify_code_create_url
    assert_response :success
  end
end
