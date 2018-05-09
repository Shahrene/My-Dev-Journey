class User < ApplicationRecord
  has_secure_password
  validates :username, :surname, :email, :password_digest, :presence  => true
end
