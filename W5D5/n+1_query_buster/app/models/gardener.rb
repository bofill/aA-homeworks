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
class Gardener < ApplicationRecord
  belongs_to :house,
    class_name: 'House',
    foreign_key: :house_id,
    primary_key: :id

  has_many :plants,
    class_name: 'Plant',
    foreign_key: :gardener_id,
    primary_key: :id
end
