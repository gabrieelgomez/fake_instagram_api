class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :created_at
  has_one :author, serializer: UserSerializer
  has_many :comments, serializer: CommentSerializer

  def author
    object.user
  end
end
