# == Schema Information
#
# Table name: drivers
#
#  id                  :bigint           not null, primary key
#  availability_status :boolean
#  experience          :integer
#  license_details     :text
#  name                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  driver_id           :string
#
class Driver < ApplicationRecord
end
