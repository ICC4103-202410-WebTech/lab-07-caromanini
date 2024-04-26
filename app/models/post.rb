class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, :through => :post_tags

    has_many :reference_posts, class_name: "Post", foreign_key: "main_post_id"
    belongs_to :main_post, class_name: "Post", optional: true

    before_validation :set_default_published_at

    validates :title, :content, :user_id, presence: {message: "is not present!"}
    validates :answers_count, numericality: {greater_than_or_equal_to: 0, message: "is invalid! (value less than 0)"}
    validates :likes_count, numericality: {greater_than_or_equal_to: 0, message: "is invalid! (value less than 0)"}

    private
    def set_default_published_at
        self.published_at ||= Time.current
    end
end