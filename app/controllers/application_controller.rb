class ApplicationController < ActionController::Base
  protect_from_forgery
  clear_helpers

  rescue_from Exception, :with => :internal_server_error
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404
  rescue_from ActionController::RoutingError, :with => :render_404

  private

  def internal_server_error(exception)
    raise exception unless Rails.env.production?
    render "errors/internal_server_error", :status => 500
  end

  def render_404(exception)
    raise exception unless Rails.env.production?
    render "errors/not_found", :status => 404
  end
end
