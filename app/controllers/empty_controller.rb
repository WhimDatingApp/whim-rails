class EmptyController < ActionController::Base

  def four_oh_four
    raise ActionController::RoutingError.new("Not Found")
  end

end
