# == Schema Information
#
# Table name: dispatchers
#
#  id             :bigint           not null, primary key
#  assigned_loads :text
#  contact_info   :text
#  name           :string
#  schedule       :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  dispatcher_id  :string
#
require 'test_helper'

class DispatcherTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
