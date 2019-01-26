class User < ApplicationRecord
  
  has_many :rooms


	# Include default devise modules and remember to add field to user table:
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]
				 #Others available are: :lockable, :timeoutable
  
  validates :fullname, presence: true, length: {minimum: 3, maximum: 50}



# def self.find_for_facebook_oauth2(access_token, signed_in_resource=nil)
#     data = access_token.info
#     user = User.where(:provider => access_token.provider, :uid => access_token.uid).first
    
#     if user # check if we can find use
#       return user # regurn the use
#     else #otherwise, create user
#       registered_user = User.where(:email => data.email).first
#       if registered_user
#         return registered_user
#       else # create new user
#         user = User.create(
#           fullname: access_token.extra.raw_info.name,
#           provider: access_token.provider,
#           email: data.email,
#           uid: access_token.uid,
#           image: data.image,
#           password: Devise.friendly_token[0,20]
#         )
#       end
#     end
#   end


def self.from_omniauth(auth)
    user = User.where(email: auth.info.email).first

    if user
      return user
    else
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.password = Devise.friendly_token[0,20]
        user.fullname = auth.info.name
        user.image = auth.info.image
        user.uid = auth.uid
        user.provider = auth.provider

        # If you are using confirmable and the provider(s) you use validate emails,
        # uncomment the line below to skip the confirmation emails.
        user.skip_confirmation!

      end
    end
  end


end
