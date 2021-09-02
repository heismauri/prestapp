class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

#  rescue_from Pundit::NotAuthorizedError do
#    redirect_to root_path, alert: "You aren't allowed to do that"
#  end

  def index
    @articles = policy_scope(Article)
    authorize @articles
  end

  def show
  end

  def new
    @article = Article.new
    authorize @article
  end

  def create
    @article = Article.new(article_params)
    authorize @article
    @article.user = current_user
    @article.save
  end

  def edit

  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
    authorize @article
  end

  def article_params
    params.require(:article).permit(:name, :description, :price, :category)
  end
end
