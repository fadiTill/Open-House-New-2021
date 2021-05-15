class OmniauthController < ApplicationController

    def facebook 
        @user = User.create_from_provider_data(request.env['omniauth.auth'])
        if @user.persisted?
            sign_in_and_redirect @user
            set_flash_message(:notice, :succes, kind: 'facebook') if is_navigational_format?
        else 
             flash[:error] = ` You can't sign with Facebook now. Please register or try again.`
            redirect_to new_user_registration_url
        end 
    end 
end 


