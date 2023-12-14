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
require 'test_helper'

class LoadTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
