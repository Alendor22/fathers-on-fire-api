class DonationSerializer < ActiveModel::Serializer
  attributes :amount
  belongs_to :project
  belongs_to :user, serializer: ProjectUsersSerializer
end
