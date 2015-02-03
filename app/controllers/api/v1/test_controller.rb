module Api
  module V1
    class TestController < Api::V1::BaseController

      skip_before_filter :authenticate_user!, only: %i[empty_response]

      def empty_response
        render json: ""
      end

      def ping
        render json: {response: "pong"}
      end

    end
  end
end
