class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys:[:license,:first_name, :last_name, :url, :avatar  ])
        devise_parameter_sanitizer.permit(:update, keys:[:license,:first_name, :last_name, :url, :avatar ])
       
end
end


