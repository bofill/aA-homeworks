# == Schema Information
#
# Table name: gardeners
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  house_id   :integer
#
# Indexes
#
#  index_gardeners_on_house_id  (house_id)
#
require 'test_helper'

class GardenerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
