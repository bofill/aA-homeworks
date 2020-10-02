# == Schema Information
#
# Table name: tracks
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :integer
#
# Indexes
#
#  index_tracks_on_album_id  (album_id)
#
class Track < ApplicationRecord
  belongs_to :album,
    class_name: 'Album',
    foreign_key: :album_id,
    primary_key: :id
end
