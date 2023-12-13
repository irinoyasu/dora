require 'test_helper'

class DispatchersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dispatcher = dispatchers(:one)
  end

  test 'should get index' do
    get dispatchers_url
    assert_response :success
  end

  test 'should get new' do
    get new_dispatcher_url
    assert_response :success
  end

  test 'should create dispatcher' do
    assert_difference('Dispatcher.count') do
      post dispatchers_url,
           params: { dispatcher: { assigned_loads: @dispatcher.assigned_loads, contact_info: @dispatcher.contact_info,
                                   dispatcher_id: @dispatcher.dispatcher_id, name: @dispatcher.name, schedule: @dispatcher.schedule } }
    end

    assert_redirected_to dispatcher_url(Dispatcher.last)
  end

  test 'should show dispatcher' do
    get dispatcher_url(@dispatcher)
    assert_response :success
  end

  test 'should get edit' do
    get edit_dispatcher_url(@dispatcher)
    assert_response :success
  end

  test 'should update dispatcher' do
    patch dispatcher_url(@dispatcher),
          params: { dispatcher: { assigned_loads: @dispatcher.assigned_loads, contact_info: @dispatcher.contact_info,
                                  dispatcher_id: @dispatcher.dispatcher_id, name: @dispatcher.name, schedule: @dispatcher.schedule } }
    assert_redirected_to dispatcher_url(@dispatcher)
  end

  test 'should destroy dispatcher' do
    assert_difference('Dispatcher.count', -1) do
      delete dispatcher_url(@dispatcher)
    end

    assert_redirected_to dispatchers_url
  end
end
