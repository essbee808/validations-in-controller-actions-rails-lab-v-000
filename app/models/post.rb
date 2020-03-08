class Post < ActiveRecord::Base
  validates :title, :content, :category, presence: true
  validates :content, length: { minimum: 100 }
  VALID_CATEGORIES = %(Fiction Non-Fiction)
  validates_inclusion_of :category, :in => VALID_CATEGORIES

end
