class AdminUser < ApplicationRecord
  has_many :projects
  has_many :donations, through: :projects
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable, :omniauthable
end
