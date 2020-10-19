class User < ApplicationRecord
  has_many :admins
  has_many :donations
  has_many :projects, through: :donations

  def self.create_from_omniauth(auth)
    # Creates a new user only if it doesn't exist
    where(email: auth.info.email).first_or_initialize do |user|
        user.uid = auth.uid
        user.name = auth.info.name
        user.email = auth.info.email
        user.image_url = auth.info.image
    end
  end

end
