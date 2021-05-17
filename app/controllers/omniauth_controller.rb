class OmniauthController < ApplicationController

    def facebook 
        @user = User.create_from_provider_data(request.env['omniauth.auth'])
        if @user.persisted?
            sign_in_and_redirect @user
            # set_flash method create errors
         else 
             flash[:error] = 'Please register or try again.'
            redirect_to new_user_registration_url
        end 
    end 
end 


