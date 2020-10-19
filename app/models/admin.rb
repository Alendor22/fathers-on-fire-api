class Admin < ApplicationRecord
  belongs_to :user
  has_many :projects
  has_many :donations, through: :projects
end
