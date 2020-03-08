class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :content, length: { minimum: 100 }
  validates :category, presence: true
end
