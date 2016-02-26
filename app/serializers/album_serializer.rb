class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :artist_ids, :song_ids
  
  
end
 