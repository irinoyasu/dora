# == Schema Information
#
# Table name: relay_points
#
#  id                 :bigint           not null, primary key
#  available_services :text
#  capacity           :integer
#  contact_info       :text
#  location           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  relay_point_id     :string
#
class RelayPoint < ApplicationRecord
end
