# == Schema Information
#
# Table name: seeds
#
#  id         :bigint           not null, primary key
#  count      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  plant_id   :integer
#
# Indexes
#
#  index_seeds_on_plant_id  (plant_id)
#
require 'test_helper'

class SeedTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
