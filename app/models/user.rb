class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10 }
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
end
