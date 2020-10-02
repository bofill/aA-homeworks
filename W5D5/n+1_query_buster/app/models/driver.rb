# == Schema Information
#
# Table name: drivers
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bus_id     :integer
#
# Indexes
#
#  index_drivers_on_bus_id  (bus_id)
#
class Driver < ApplicationRecord
  belongs_to :bus,
    class_name: 'Bus',
    foreign_key: :bus_id,
    primary_key: :id
end
