module Api
  class TestController < Api::BaseController

    skip_before_filter :authenticate_user!, only: %i[empty_response]

    def empty_response
      render json: ""
    end

    def ping
      render json: {response: "pong"}
    end
  end
end
