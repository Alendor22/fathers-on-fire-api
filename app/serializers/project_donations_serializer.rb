class ProjectDonationsSerializer < ActiveModel::Serializer
  attributes :id, :donor_id, :project_id, :amount
end
