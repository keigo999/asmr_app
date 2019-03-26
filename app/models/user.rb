class User < ApplicationRecord
  validates :name, presence: true
  validates :password, presence: true,  length: { maximum: 6 }
  has_many :reviews
end
