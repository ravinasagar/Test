class Members::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # def google_oauth2
  #   #binding.pry
  #     # You need to implement the method below in your model (e.g. app/models/user.rb)
  #     @member = Member.from_omniauth(request.env['omniauth.auth'])
  #     #binding.pry
  #     if @member.present?
  #       flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
  #       #binding.pry
  #       sign_in_and_redirect(@member)
  #     else
  #       session['devise.google_data'] = request.env['omniauth.auth'].except(:extra) # Removing extra as it can overflow some session stores
  #       redirect_to new_member_registration_url
  #     end
  # end

  # def facebook
  #   # You need to implement the method below in your model (e.g. app/models/user.rb)
  #   #binding.pry
  #   @member = Member.from_omniauth(request.env["omniauth.auth"])

  #   if @member.present?
  #     sign_in_and_redirect @member
  #     set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
  #   else
  #     session["devise.facebook_data"] = request.env["omniauth.auth"]
  #     redirect_to new_member_registration_url
  #   end
  # end

  # def failure
  #   #binding.pry
  #   redirect_to root_path
  # end

  

end
