class Article < ApplicationRecord
  # validation
  validates :title,    presence: true
  validates :text,     presence: true
  validates :category, presence: true

  # すべてのタイトルを取得する
  def self.getAllTitle
    articles = []
    self.all.each do |article|
      articles << article.title
    end
    return articles
  end
end
