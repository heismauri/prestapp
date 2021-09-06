class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  # rescue_from Pundit::NotAuthorizedError do
  #   redirect_to root_path, alert: "You aren't allowed to do that"
  # end

  def index
    @articles = policy_scope(Article)
    authorize @articles
  end

  def show; end

  def new
    @article = Article.new
    authorize @article
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    authorize @article
    @article.save

    redirect_to article_path(@article)
  end

  def edit; end

  def update
    @article.update(article_params)

    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy

    redirect_to articles_path
  end

  def search
    @parameter = params[:search].downcase
    @results = Article.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
  end

  private

  def set_article
    @article = Article.find(params[:id])
    authorize @article
  end

  def article_params
    params.require(:article).permit(:name, :description, :price, :category_id, :picture)
  end
end
