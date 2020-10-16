class AdminSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :zip
end
