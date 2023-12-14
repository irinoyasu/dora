# == Schema Information
#
# Table name: loads
#
#  id          :bigint           not null, primary key
#  description :text
#  destination :string
#  size        :string
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  load_id     :string
#
class Load < ApplicationRecord
end
