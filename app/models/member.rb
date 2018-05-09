class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:omniauthable,omniauth_providers: [:facebook,:google_oauth2]


  def self.from_omniauth(access_token)
    # data = access_token.info["email"]
    #binding.pry
    member = Member.where(email: access_token.info["email"]).try(:first)
    # binding.pry
    # Uncomment the section below if you want users to be created if they don't exist
    unless member
        member = Member.create(email: access_token.info["email"],password: Devise.friendly_token[0,20])
    end
    member
  end


end
