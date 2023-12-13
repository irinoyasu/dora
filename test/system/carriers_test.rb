require 'application_system_test_case'

class CarriersTest < ApplicationSystemTestCase
  setup do
    @carrier = carriers(:one)
  end

  test 'visiting the index' do
    visit carriers_url
    assert_selector 'h1', text: 'Carriers'
  end

  test 'should create carrier' do
    visit carriers_url
    click_on 'New carrier'

    fill_in 'Capital', with: @carrier.capital
    fill_in 'Carrier', with: @carrier.carrier_id
    fill_in 'Guarantee amount', with: @carrier.guarantee_amount
    fill_in 'Insurance policy1', with: @carrier.insurance_policy1
    fill_in 'Insurance policy2', with: @carrier.insurance_policy2
    fill_in 'Number of employees', with: @carrier.number_of_employees
    check 'Presence of warehouse' if @carrier.presence_of_warehouse
    fill_in 'Registration date', with: @carrier.registration_date
    fill_in 'Vehicle type1', with: @carrier.vehicle_type1
    fill_in 'Vehicle type2', with: @carrier.vehicle_type2
    fill_in 'Vehicle type3', with: @carrier.vehicle_type3
    fill_in 'Vehicle type4', with: @carrier.vehicle_type4
    fill_in 'Vehicle type5', with: @carrier.vehicle_type5
    click_on 'Create Carrier'

    assert_text 'Carrier was successfully created'
    click_on 'Back'
  end

  test 'should update Carrier' do
    visit carrier_url(@carrier)
    click_on 'Edit this carrier', match: :first

    fill_in 'Capital', with: @carrier.capital
    fill_in 'Carrier', with: @carrier.carrier_id
    fill_in 'Guarantee amount', with: @carrier.guarantee_amount
    fill_in 'Insurance policy1', with: @carrier.insurance_policy1
    fill_in 'Insurance policy2', with: @carrier.insurance_policy2
    fill_in 'Number of employees', with: @carrier.number_of_employees
    check 'Presence of warehouse' if @carrier.presence_of_warehouse
    fill_in 'Registration date', with: @carrier.registration_date
    fill_in 'Vehicle type1', with: @carrier.vehicle_type1
    fill_in 'Vehicle type2', with: @carrier.vehicle_type2
    fill_in 'Vehicle type3', with: @carrier.vehicle_type3
    fill_in 'Vehicle type4', with: @carrier.vehicle_type4
    fill_in 'Vehicle type5', with: @carrier.vehicle_type5
    click_on 'Update Carrier'

    assert_text 'Carrier was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Carrier' do
    visit carrier_url(@carrier)
    click_on 'Destroy this carrier', match: :first

    assert_text 'Carrier was successfully destroyed'
  end
end
