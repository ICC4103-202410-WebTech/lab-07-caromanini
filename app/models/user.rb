class User < ApplicationRecord
    has_many :posts

    validates :name, :email, :password, presence: {message: "is not present!"}
    validates :email, uniqueness: {message: "is already registered!! Please enter another email"}, 
                      format: {with: URI::MailTo::EMAIL_REGEXP, message: "invalid format !!"}
    validates :password, length: {minimum: 6, message: "has to have a minimum length of 6 characters"} 
end