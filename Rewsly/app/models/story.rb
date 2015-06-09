class Story < ActiveRecord::Base
    validates :title, presence: true, length: { maximum:50 }
    validates :link, presence: true, length: { maximum:250 }
    validates :upvotes, presence: true
    validates :category, presence: true, length: { maximum:250 }
    belongs_to :user
    has_many :comments 
end
