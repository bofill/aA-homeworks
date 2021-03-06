# == Schema Information
#
# Table name: albums
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#
# Indexes
#
#  index_albums_on_artist_id  (artist_id)
#
class Album < ApplicationRecord
  belongs_to :artist,
    class_name: 'Artist',
    foreign_key: :artist_id,
    primary_key: :id

  has_many :tracks,
    class_name: 'Track',
    foreign_key: :album_id,
    primary_key: :id
end
