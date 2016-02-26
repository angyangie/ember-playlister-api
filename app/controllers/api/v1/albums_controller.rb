module Api
  module V1
    class AlbumsController < ApplicationController
      def index
        render json: Album.all
      end

      def show
        album = Album.find(params[:id])
        render json: album
      end

      def create
        album = Album.create(album_params)
        params[:album][:songs].each do |song_hash|
          song = Song.create(name: song_hash[:name])
          album.songs << song
          song_hash[:artists].each do |artist|
            song.artists << Artist.create(name: artist[:name])
          end
          song.save
        end
        album.save
        render json: album
      end

      private

        def album_params
          params.require(:album).permit(:name)
        end

        def album_song_params
          params.require(:album).permit(:songs => [:id, :name, :album_id])
        end
    end
  end
end
