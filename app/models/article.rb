class Article < ApplicationRecord
  # validation
  validates :title,    presence: true
  validates :text,     presence: true
  validates :category, presence: true
end
