class RegistrationsController < Devise::RegistrationsController
#  def create
#    super
#      if resource.save
#       # UserMailer.welcome(@user).deliver unless @user.invalid?
#      end
#  end
   
  private
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :passwordi, :avatar) }
  end
  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
    params.require(:user).permit(:first_name, :last_name, :email, :street, :city, :state, :zip, :phone, :password, :password_confirmation, :avatar)
  end

  def account_update_params
    devise_parameter_sanitizer.sanitize(:account_update)
    params.require(:user).permit(:first_name, :last_name, :email, :street, :city, :state, :zip, :phone, :password, :password_confirmation, :current_password, :avatar)
  end

end

