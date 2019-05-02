class Post < ActiveRecord::Base
  validates :title, presence: true
  validates_numericality_of :content, {greater_than_or_equal_to: 250 }
  validates :summary, length: { maximum: 250}
  validates :category, inclusion: { in: ["Fiction", "Non-Fiction"]}
end
