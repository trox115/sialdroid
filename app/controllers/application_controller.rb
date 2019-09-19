# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :masquerade_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation, :companies_id) }

    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  def is_admin?
    signed_in? ? current_user.admin : false
 end
end
