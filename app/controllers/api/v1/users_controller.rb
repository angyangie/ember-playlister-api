module Api
  module V1
    class UsersController < ApplicationController
      def me
        cu = {user: current_user}
        render json: cu
      end
    end
  end
end
