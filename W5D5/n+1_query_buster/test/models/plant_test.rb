# == Schema Information
#
# Table name: plants
#
#  id          :bigint           not null, primary key
#  species     :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  gardener_id :integer
#
# Indexes
#
#  index_plants_on_gardener_id  (gardener_id)
#
require 'test_helper'

class PlantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
