require 'test_helper'

class ContactphonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contactphone = contactphones(:one)
  end

  test "should get index" do
    get contactphones_url
    assert_response :success
  end

  test "should get new" do
    get new_contactphone_url
    assert_response :success
  end

  test "should create contactphone" do
    assert_difference('Contactphone.count') do
      post contactphones_url, params: { contactphone: { address: @contactphone.address, city: @contactphone.city, email: @contactphone.email, name: @contactphone.name, phone: @contactphone.phone } }
    end

    assert_redirected_to contactphone_url(Contactphone.last)
  end

  test "should show contactphone" do
    get contactphone_url(@contactphone)
    assert_response :success
  end

  test "should get edit" do
    get edit_contactphone_url(@contactphone)
    assert_response :success
  end

  test "should update contactphone" do
    patch contactphone_url(@contactphone), params: { contactphone: { address: @contactphone.address, city: @contactphone.city, email: @contactphone.email, name: @contactphone.name, phone: @contactphone.phone } }
    assert_redirected_to contactphone_url(@contactphone)
  end

  test "should destroy contactphone" do
    assert_difference('Contactphone.count', -1) do
      delete contactphone_url(@contactphone)
    end

    assert_redirected_to contactphones_url
  end
end
