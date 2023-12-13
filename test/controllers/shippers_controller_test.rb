require 'test_helper'

class ShippersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipper = shippers(:one)
  end

  test 'should get index' do
    get shippers_url
    assert_response :success
  end

  test 'should get new' do
    get new_shipper_url
    assert_response :success
  end

  test 'should create shipper' do
    assert_difference('Shipper.count') do
      post shippers_url,
           params: { shipper: { company_name: @shipper.company_name, contact_info: @shipper.contact_info,
                                history_of_shipments: @shipper.history_of_shipments, shipper_id: @shipper.shipper_id } }
    end

    assert_redirected_to shipper_url(Shipper.last)
  end

  test 'should show shipper' do
    get shipper_url(@shipper)
    assert_response :success
  end

  test 'should get edit' do
    get edit_shipper_url(@shipper)
    assert_response :success
  end

  test 'should update shipper' do
    patch shipper_url(@shipper),
          params: { shipper: { company_name: @shipper.company_name, contact_info: @shipper.contact_info,
                               history_of_shipments: @shipper.history_of_shipments, shipper_id: @shipper.shipper_id } }
    assert_redirected_to shipper_url(@shipper)
  end

  test 'should destroy shipper' do
    assert_difference('Shipper.count', -1) do
      delete shipper_url(@shipper)
    end

    assert_redirected_to shippers_url
  end
end
