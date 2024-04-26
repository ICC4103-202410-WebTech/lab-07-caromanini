class User < ApplicationRecord
    has_many :posts

    validates :name, :email, :password, presence: true
    validates :email, uniqueness: true, format: {with: URI::MailTo::EMAIL_REGEXP}
    validates :password, length: {minimum: 6} 
end