class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist_ids, :album_id
  # has_one :album
   # embed :ids, include: true
    # attributes :id, :name
    # belongs_to :album
    # has_many :artists
end
