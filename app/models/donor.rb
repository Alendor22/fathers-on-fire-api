class Donor < ApplicationRecord
  has_many :donations
  has_many :projects, through: :donations
end
