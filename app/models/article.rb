class Article < ApplicationRecord
  # validation
  validates :title,    presence: true
  validates :text,     presence: true
  validates :category, presence: true

  # すべてのタイトルのみを配列にして返す
  def self.getAllTitle
    articles = []
    self.all.each do |article|
      articles << article.title
    end
    return articles
  end
end
