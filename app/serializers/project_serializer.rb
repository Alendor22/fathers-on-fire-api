class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :summary, :objective, :location
  has_many :users
  # , serializer: ProjectUsersSerializer
end
