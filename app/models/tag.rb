class Tag < ApplicationRecord
    has_many :post_tags
    has_many :posts, :trough => :post_tags
end