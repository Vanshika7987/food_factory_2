class ApplicationController < ActionController::Base

  def after_sign_in_path_for(_resource)
    accounts_path
  end
  def after_sign_out_path_for(_resource_or_scope)
    new_account_session_path
  end
end
