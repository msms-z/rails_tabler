class ApplicationController < ActionController::Base

    before_action :authenticate_user!
    before_action :configure_permitted_parameters, if: :devise_controller?

    layout :layout_by_resource

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:mobile, :name, :email])
    end

    private

    def layout_by_resource
        if devise_controller?
            "devise"
        else
            "application"
        end
    end
    
end
