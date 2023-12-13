require 'test_helper'

class RelayPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relay_point = relay_points(:one)
  end

  test 'should get index' do
    get relay_points_url
    assert_response :success
  end

  test 'should get new' do
    get new_relay_point_url
    assert_response :success
  end

  test 'should create relay_point' do
    assert_difference('RelayPoint.count') do
      post relay_points_url,
           params: { relay_point: { available_services: @relay_point.available_services, capacity: @relay_point.capacity,
                                    contact_info: @relay_point.contact_info, location: @relay_point.location, relay_point_id: @relay_point.relay_point_id } }
    end

    assert_redirected_to relay_point_url(RelayPoint.last)
  end

  test 'should show relay_point' do
    get relay_point_url(@relay_point)
    assert_response :success
  end

  test 'should get edit' do
    get edit_relay_point_url(@relay_point)
    assert_response :success
  end

  test 'should update relay_point' do
    patch relay_point_url(@relay_point),
          params: { relay_point: { available_services: @relay_point.available_services, capacity: @relay_point.capacity,
                                   contact_info: @relay_point.contact_info, location: @relay_point.location, relay_point_id: @relay_point.relay_point_id } }
    assert_redirected_to relay_point_url(@relay_point)
  end

  test 'should destroy relay_point' do
    assert_difference('RelayPoint.count', -1) do
      delete relay_point_url(@relay_point)
    end

    assert_redirected_to relay_points_url
  end
end
