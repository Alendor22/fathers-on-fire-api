class Project < ApplicationRecord
  belongs_to :admin
  has_many :donations
  has_many :donors, through: :donations
end
