class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist_ids, :album_id
end
