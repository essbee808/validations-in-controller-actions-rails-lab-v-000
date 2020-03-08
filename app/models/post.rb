class Post < ActiveRecord::Base
  validates :title, :content, :category, presence: true
  validates :content, length: { minimum: 100 }
  validates_inclusion_of :category, :in => %w(Fiction Non-fiction)
end
