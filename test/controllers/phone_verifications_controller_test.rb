require 'test_helper'

class PhoneVerificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get phone_verifications_new_url
    assert_response :success
  end

  test "should get create" do
    get phone_verifications_create_url
    assert_response :success
  end

  test "should get challenge" do
    get phone_verifications_challenge_url
    assert_response :success
  end

  test "should get verify" do
    get phone_verifications_verify_url
    assert_response :success
  end

  test "should get success" do
    get phone_verifications_success_url
    assert_response :success
  end

end
