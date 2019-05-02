class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates_numericality_of :phone_number, {equal_to: 10}
end
