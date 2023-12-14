# == Schema Information
#
# Table name: shippers
#
#  id                   :bigint           not null, primary key
#  company_name         :string
#  contact_info         :text
#  history_of_shipments :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  shipper_id           :string
#
class Shipper < ApplicationRecord
end
