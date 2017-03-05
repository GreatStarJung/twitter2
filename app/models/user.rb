class User < ApplicationRecord
  has_many :replies
  has_many :comments
end
