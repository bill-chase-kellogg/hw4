class Place < ApplicationRecord
  has_many :posts
  has_many :user
end
