class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource)
        root_path
    end

    def after_sign_out_path_for(resource)
        new_user_session_path
    end

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile_image, :profile_text, :goal])
            devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile_image, :profile_text, :goal])
        end
end
