require "application_system_test_case"

class VerifyCodesTest < ApplicationSystemTestCase
  setup do
    @verify_code = verify_codes(:one)
  end

  test "visiting the index" do
    visit verify_codes_url
    assert_selector "h1", text: "Verify codes"
  end

  test "should create verify code" do
    visit verify_codes_url
    click_on "New verify code"

    fill_in "Code", with: @verify_code.code
    check "Is success" if @verify_code.is_success
    fill_in "Mobile", with: @verify_code.mobile
    fill_in "Res json", with: @verify_code.res_json
    click_on "Create Verify code"

    assert_text "Verify code was successfully created"
    click_on "Back"
  end

  test "should update Verify code" do
    visit verify_code_url(@verify_code)
    click_on "Edit this verify code", match: :first

    fill_in "Code", with: @verify_code.code
    check "Is success" if @verify_code.is_success
    fill_in "Mobile", with: @verify_code.mobile
    fill_in "Res json", with: @verify_code.res_json
    click_on "Update Verify code"

    assert_text "Verify code was successfully updated"
    click_on "Back"
  end

  test "should destroy Verify code" do
    visit verify_code_url(@verify_code)
    click_on "Destroy this verify code", match: :first

    assert_text "Verify code was successfully destroyed"
  end
end
