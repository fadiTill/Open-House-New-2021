class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable, 
         :omniauthable, omniauth_providers: [:facebook]

         has_one_attached :avatar, dependent: :destroy
        #  add active storage validations gem to fix attached_type error
         validates :avatar, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg']

         has_many :houses
         has_many :guests


         def  self.create_from_provider_data(provider_data)
          where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |user|
            user.email = provider_data.info.email
            user.password = Devise.friendly_token[0, 20]
         end 
        end
      end
 
