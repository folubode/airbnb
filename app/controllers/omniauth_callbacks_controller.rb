class OmniauthCallbacksController < Devise::OmniauthCallbacksController


# def facebook
#     @user = User.find_for_facebook_oauth2(request.env["omniauth.auth"], current_user)

#     if @user.persisted?
#       flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Facebook"
#       sign_in_and_redirect @user, :event => :authentication
#     else
#       session["devise.user.data"] = request.env["omniauth.auth"]
#       redirect_to new_user_registration_url
#     end
#   end

  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
