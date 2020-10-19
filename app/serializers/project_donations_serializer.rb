class ProjectDonationsSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :project_id, :amount
end
