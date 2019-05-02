class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250}
  validates :summary, length: { maximum: 250}
  validates :category, inclusion: { in: ["Fiction", "Non-Fiction"]}
end
Failure/Error: expect(non_clickbait).to be_invalid
       expected `#<Post id: nil, title: "True Facts", content: "Lorem ipsum dolor sit amet, consectetur adipiscing...", summary: "Abstract.", category: "Fiction", created_at: nil, updated_at: nil>.invalid?` to return true, got false
     