# == Schema Information
#
# Table name: vehicles
#
#  id                 :bigint           not null, primary key
#  capacity           :integer
#  location           :string
#  maintenance_status :string
#  type               :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  vehicle_id         :string
#
require 'test_helper'

class VehicleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
