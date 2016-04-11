class Users::RegistrationsController < Devise::RegistrationsController
  protected
  def after_sign_in_path_for(resource)
    #signed_in_root_path(resource)
    "/users/overview"
  end

  def after_update_path_for(resource)
    signed_in_root_path(resource)
  end
end