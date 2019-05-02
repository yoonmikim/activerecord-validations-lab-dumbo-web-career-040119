class Post < ActiveRecord::Base
  validates :title, presence: true
  validates_numericality_of :content {greater_than_or_equal_to: 250 }
  validates :summary, length: { maxminum: 250}
  validates :catecory, inclusion: { in: ["Fiction", "Non-Fiction"]}
end
