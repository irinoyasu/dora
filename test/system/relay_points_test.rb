require 'application_system_test_case'

class RelayPointsTest < ApplicationSystemTestCase
  setup do
    @relay_point = relay_points(:one)
  end

  test 'visiting the index' do
    visit relay_points_url
    assert_selector 'h1', text: 'Relay points'
  end

  test 'should create relay point' do
    visit relay_points_url
    click_on 'New relay point'

    fill_in 'Available services', with: @relay_point.available_services
    fill_in 'Capacity', with: @relay_point.capacity
    fill_in 'Contact info', with: @relay_point.contact_info
    fill_in 'Location', with: @relay_point.location
    fill_in 'Relay point', with: @relay_point.relay_point_id
    click_on 'Create Relay point'

    assert_text 'Relay point was successfully created'
    click_on 'Back'
  end

  test 'should update Relay point' do
    visit relay_point_url(@relay_point)
    click_on 'Edit this relay point', match: :first

    fill_in 'Available services', with: @relay_point.available_services
    fill_in 'Capacity', with: @relay_point.capacity
    fill_in 'Contact info', with: @relay_point.contact_info
    fill_in 'Location', with: @relay_point.location
    fill_in 'Relay point', with: @relay_point.relay_point_id
    click_on 'Update Relay point'

    assert_text 'Relay point was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Relay point' do
    visit relay_point_url(@relay_point)
    click_on 'Destroy this relay point', match: :first

    assert_text 'Relay point was successfully destroyed'
  end
end
