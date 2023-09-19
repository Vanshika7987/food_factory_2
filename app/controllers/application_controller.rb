class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameter, if: :devise_controller?

  protected

  def after_sign_in_path_for(_resource)
    admin_dashboard_path
    # accounts_path
  end

  def after_sign_out_path_for(_resource_or_scope)
    new_account_session_path
  end

  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[type name phone_number])
  end
end
