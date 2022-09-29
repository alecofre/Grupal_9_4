class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:mail, :encrypted_password])
        
    end
    
    def permitted?
        if !current_user.vendedor?
            redirect_to articulos_path, alert: "No tiene permisos en esta area"
        end
        
    end

    def permitted_admin?
        if !current_user.admin?
            redirect_to articulos_path, alert: "No tiene permisos en esta area"
        end
        
    end
end
