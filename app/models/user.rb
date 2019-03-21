class User < ApplicationRecord
  validates :name, presence: true
  validates :password, presence: true,  length: { maximum: 6 }
end
