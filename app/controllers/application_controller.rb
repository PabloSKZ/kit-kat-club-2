class ApplicationController < ActionController::Base
  include ApplicationHelper
    after_action :create_cart_and_assign_to_current_user, only: [:create]

    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:admin, :email, :password)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:admin, :email, :password, :current_password)}
         end

    
end
