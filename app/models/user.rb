class User < ApplicationRecord
  has_many :links
  has_many :tags
end
