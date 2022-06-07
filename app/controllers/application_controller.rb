class ApplicationController < ActionController::Base




def after_sign_in_path_for(resource)
      case resource
        when Admin
          admins_items_path
        when Customer
          root_path
      end
end





  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :encrypted_password, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :phone_number])
    end
end
