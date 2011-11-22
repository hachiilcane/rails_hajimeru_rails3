class ErrorsController < ApplicationController
  def not_found
    raise ActionController::RoutingError, "No route mathes #{request.path.inspect}"
  end
end
