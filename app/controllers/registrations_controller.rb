class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters
  
  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up).push(:first_name, :last_name, :login, :avatar)
      devise_parameter_sanitizer.for(:account_update).push(:first_name, :last_name, :login, :avatar)
    end

end
