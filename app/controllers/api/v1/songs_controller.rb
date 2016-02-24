module Api
  module V1
    class SongsController < ApplicationController
      def index
        render json: Song.all
      end

      def show
        song = Song.find(params[:id])
        render json: song
      end

      def create
        binding.pry
        song = Song.new(song_params)
        song.album = Album.find(params[:song][:album])
        params[:song][:artists].each do |artist_id|
          song.artists << Artist.find(artist_id)
        end
        render json: song
      end

      private

        def song_params
          params.require(:song).permit(:name)
        end
    end
  end
end
