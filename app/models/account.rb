class Account < ApplicationRecord
    has_secure_password
    has_many :posts
    has_many :comments

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid email address"}, uniqueness: { case_sensitive: false }
end
