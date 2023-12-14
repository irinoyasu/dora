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
class Vehicle < ApplicationRecord
end
