# == Schema Information
#
# Table name: carriers
#
#  id                    :bigint           not null, primary key
#  capital               :integer
#  guarantee_amount      :integer
#  insurance_policy1     :text
#  insurance_policy2     :text
#  number_of_employees   :integer
#  presence_of_warehouse :boolean
#  registration_date     :date
#  vehicle_type1         :string
#  vehicle_type2         :string
#  vehicle_type3         :string
#  vehicle_type4         :string
#  vehicle_type5         :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  carrier_id            :string
#
class Carrier < ApplicationRecord
end
