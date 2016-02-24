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
        render json: album
      end

      private

        def album_params
          params.require(:album).permit(:name)
        end
    end
  end
end
