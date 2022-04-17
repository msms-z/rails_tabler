require "test_helper"

class VerifyCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @verify_code = verify_codes(:one)
  end

  test "should get index" do
    get verify_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_verify_code_url
    assert_response :success
  end

  test "should create verify_code" do
    assert_difference("VerifyCode.count") do
      post verify_codes_url, params: { verify_code: { code: @verify_code.code, is_success: @verify_code.is_success, mobile: @verify_code.mobile, res_json: @verify_code.res_json } }
    end

    assert_redirected_to verify_code_url(VerifyCode.last)
  end

  test "should show verify_code" do
    get verify_code_url(@verify_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_verify_code_url(@verify_code)
    assert_response :success
  end

  test "should update verify_code" do
    patch verify_code_url(@verify_code), params: { verify_code: { code: @verify_code.code, is_success: @verify_code.is_success, mobile: @verify_code.mobile, res_json: @verify_code.res_json } }
    assert_redirected_to verify_code_url(@verify_code)
  end

  test "should destroy verify_code" do
    assert_difference("VerifyCode.count", -1) do
      delete verify_code_url(@verify_code)
    end

    assert_redirected_to verify_codes_url
  end
end
