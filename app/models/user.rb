class User < ApplicationRecord

    validates :username, uniqueness: true, length: { minimum: 4, maximum: 12}, presence: true
    validates :email, uniqueness: true, presence: true
    validates :password, length: {minimum: 6, maximum: 16}, presence: true
    has_many :posts
end
