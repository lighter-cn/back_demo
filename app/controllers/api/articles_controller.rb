class Api::ArticlesController < ApplicationController
  def index
    # test
    # example) curl http://localhost:3000/api/articles
    @articles = Article.all
    render json: @articles
  end

  def show
    # test
    # example) curl http://localhost:3000/api/article/:id
    begin
      @article = Article.find(params[:id])
      render json: @article
    rescue => exception
      render json: exception
    end
  end

  def create
    # test
    # example) curl -X POST http://localhost:3000/api/articles -H "Content-Type: application/json" -d '{"article": {"title": "demo2","text": "sample text.","category": 1}}'
    @article = Article.new(article_params)
    begin
      @article.save
      render json: @article
    rescue => exception
      render json: exception
    end
  end

  def update
    # test
    # example) curl -X PATCH http://localhost:3000/api/articles/:id -H "Content-Type: application/json" -d '{"article": {"title": "demo.update","text": "sample text.","category": 1}}'
    @article = Article.find(params[:id])
    begin
      @article.update(article_params)
      render json: @article
    rescue => exception
      render json: exception
    end
  end

  def destroy
    # test
    # example) curl -X DELETE http://localhost:3000/api/articles/:id
    @article = Article.find(params[:id])
    begin
      @article.destroy
      # res 返す
    rescue => exception
      render json: exception
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :category)
  end
end
