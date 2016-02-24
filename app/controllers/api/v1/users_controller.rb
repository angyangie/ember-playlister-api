module Api
  module V1
    class UsersController < ApplicationController

      def me
        # this weird thing is b/c i don't have a users
        #  serializer. #laziness
        cu = {user: current_user}
        render json: cu
      end

    end
  end
end
