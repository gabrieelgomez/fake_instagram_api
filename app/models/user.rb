class User < ApplicationRecord
  has_many :posts

  validates :username, :email, presence: true, uniqueness: true
end
