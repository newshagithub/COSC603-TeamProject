class Users::RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end

  protected
  def after_sign_in_path_for(resource)
    #signed_in_root_path(resource)
    "/users/overview"
  end

  def after_update_path_for(resource)
    signed_in_root_path(resource)
  end
end