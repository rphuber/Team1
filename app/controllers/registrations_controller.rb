class RegistrationsController < Devise::RegistrationsController
  # POST /resource
  def create
    @new_user = build_resource(sign_up_params)
    my_string = @new_user.email
    if my_string.include? "@theironyard.com"
      @new_user.admin = 1
    end


    resource_saved = resource.save
    yield resource if block_given?
    if resource_saved
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      @validatable = devise_mapping.validatable?
      if @validatable
        @minimum_password_length = resource_class.password_length.min
      end
      respond_with resource
    end
  end
 
  private
 
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :github, :email, :password, :password_confirmation)
  end
 
  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :github, :email, :password, :password_confirmation, :current_password)
  end
end