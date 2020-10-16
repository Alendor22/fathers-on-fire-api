class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :objective, :location
  has_many :donors, serializer: ProjectDonorsSerializer
end
