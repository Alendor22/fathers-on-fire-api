class Project < ApplicationRecord
  belongs_to :admin_user
  has_many :donations, dependent: :destroy
  has_many :users
  has_many :users, through: :donations
  has_many :comments

  accepts_nested_attributes_for :donations, reject_if: :reject_donation, allow_destroy: true

  def reject_donation(attr)
    attr['amount'].blank?
  end

end
