class User < ApplicationRecord
  has_secure_password
  validates :username, :surname, :email, :password_digest, length: {minimum: 2}, allow_blank: false
end
