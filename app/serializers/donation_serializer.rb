class DonationSerializer < ActiveModel::Serializer
  attributes :amount
  belongs_to :project
  belongs_to :donor, serializer: ProjectDonorsSerializer
end
