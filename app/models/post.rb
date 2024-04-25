class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, :through => :post_tags

    has_many :reference_posts, class_name: "Post", foreign_key: "main_post_id"
    belongs_to :main_post, class_name: "Post"
end