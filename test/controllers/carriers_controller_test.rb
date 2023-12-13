require 'test_helper'

class CarriersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrier = carriers(:one)
  end

  test 'should get index' do
    get carriers_url
    assert_response :success
  end

  test 'should get new' do
    get new_carrier_url
    assert_response :success
  end

  test 'should create carrier' do
    assert_difference('Carrier.count') do
      post carriers_url,
           params: { carrier: { capital: @carrier.capital, carrier_id: @carrier.carrier_id, guarantee_amount: @carrier.guarantee_amount,
                                insurance_policy1: @carrier.insurance_policy1, insurance_policy2: @carrier.insurance_policy2, number_of_employees: @carrier.number_of_employees, presence_of_warehouse: @carrier.presence_of_warehouse, registration_date: @carrier.registration_date, vehicle_type1: @carrier.vehicle_type1, vehicle_type2: @carrier.vehicle_type2, vehicle_type3: @carrier.vehicle_type3, vehicle_type4: @carrier.vehicle_type4, vehicle_type5: @carrier.vehicle_type5 } }
    end

    assert_redirected_to carrier_url(Carrier.last)
  end

  test 'should show carrier' do
    get carrier_url(@carrier)
    assert_response :success
  end

  test 'should get edit' do
    get edit_carrier_url(@carrier)
    assert_response :success
  end

  test 'should update carrier' do
    patch carrier_url(@carrier),
          params: { carrier: { capital: @carrier.capital, carrier_id: @carrier.carrier_id, guarantee_amount: @carrier.guarantee_amount,
                               insurance_policy1: @carrier.insurance_policy1, insurance_policy2: @carrier.insurance_policy2, number_of_employees: @carrier.number_of_employees, presence_of_warehouse: @carrier.presence_of_warehouse, registration_date: @carrier.registration_date, vehicle_type1: @carrier.vehicle_type1, vehicle_type2: @carrier.vehicle_type2, vehicle_type3: @carrier.vehicle_type3, vehicle_type4: @carrier.vehicle_type4, vehicle_type5: @carrier.vehicle_type5 } }
    assert_redirected_to carrier_url(@carrier)
  end

  test 'should destroy carrier' do
    assert_difference('Carrier.count', -1) do
      delete carrier_url(@carrier)
    end

    assert_redirected_to carriers_url
  end
end
