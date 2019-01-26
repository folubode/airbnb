class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


#<!--when adding field/culumn to a user table
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:fullname, :phone_number, :description])
  end
#when adding field/culumn to a user table -->


 
end