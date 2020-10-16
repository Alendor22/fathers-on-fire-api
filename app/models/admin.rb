class Admin < ApplicationRecord
  has_many :projects
  has_many :donations, through: :projects
  has_many :donors, through: :donations
end
