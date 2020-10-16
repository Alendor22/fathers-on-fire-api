class DonorSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :zip
end
