module Api
  module V1
    class ArtistsController < ApplicationController
      def index
        # render json: Artist.all
        render json: Artist.all.limit(10)
      end

      def show
        artist = Artist.find(params[:id])
        render json: artist
      end
    end
  end
end
