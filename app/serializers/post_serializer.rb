class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :user
end
