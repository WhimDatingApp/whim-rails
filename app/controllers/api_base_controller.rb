class ApiBaseController < ActionController::Base

  before_filter :authenticate_user!

private

  def authenticate_user!
    # TODO: implement this
  end

end
