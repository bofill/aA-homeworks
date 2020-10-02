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
class Seed < ApplicationRecord
  belongs_to :plant,
    class_name: 'Plant',
    foreign_key: :plant_id,
    primary_key: :id
end
