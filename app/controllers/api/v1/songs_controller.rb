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
        song = Song.new(song_params)
        artists_params[:artists].each do |artist_hash|
          song.artists << Artist.find_by(id: artist_hash[:id], name: artist_hash[:name])
        end
        song.save
        render json: song
      end

      private

        def song_params
          params.require(:song).permit(:name)
        end

        def artists_params
          params.require(:song).permit(:artists => [:id, :name])
        end
    end
  end
end
