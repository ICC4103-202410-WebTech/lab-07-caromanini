class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, :through => :post_tags

    validates :name, presence: {message: "is not present! :o"}, uniqueness: {message: "is not unique!! :("}
end