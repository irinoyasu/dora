require 'application_system_test_case'

class DispatchersTest < ApplicationSystemTestCase
  setup do
    @dispatcher = dispatchers(:one)
  end

  test 'visiting the index' do
    visit dispatchers_url
    assert_selector 'h1', text: 'Dispatchers'
  end

  test 'should create dispatcher' do
    visit dispatchers_url
    click_on 'New dispatcher'

    fill_in 'Assigned loads', with: @dispatcher.assigned_loads
    fill_in 'Contact info', with: @dispatcher.contact_info
    fill_in 'Dispatcher', with: @dispatcher.dispatcher_id
    fill_in 'Name', with: @dispatcher.name
    fill_in 'Schedule', with: @dispatcher.schedule
    click_on 'Create Dispatcher'

    assert_text 'Dispatcher was successfully created'
    click_on 'Back'
  end

  test 'should update Dispatcher' do
    visit dispatcher_url(@dispatcher)
    click_on 'Edit this dispatcher', match: :first

    fill_in 'Assigned loads', with: @dispatcher.assigned_loads
    fill_in 'Contact info', with: @dispatcher.contact_info
    fill_in 'Dispatcher', with: @dispatcher.dispatcher_id
    fill_in 'Name', with: @dispatcher.name
    fill_in 'Schedule', with: @dispatcher.schedule
    click_on 'Update Dispatcher'

    assert_text 'Dispatcher was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Dispatcher' do
    visit dispatcher_url(@dispatcher)
    click_on 'Destroy this dispatcher', match: :first

    assert_text 'Dispatcher was successfully destroyed'
  end
end
