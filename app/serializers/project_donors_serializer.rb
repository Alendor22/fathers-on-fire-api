class ProjectDonorsSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :zip
end
