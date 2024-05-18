class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :created_at, :author

  def author
    UserSerializer.new(object.author, scope: scope, root: false)
  end
end
