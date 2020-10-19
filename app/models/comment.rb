class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :donation
  validates_uniqueness_of :user
end
