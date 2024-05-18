class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author, :comments

  def author
    object.user
  end
end
