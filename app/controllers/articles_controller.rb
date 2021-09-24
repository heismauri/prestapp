class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[show search]
  # rescue_from Pundit::NotAuthorizedError do
  # redirect_to root_path, alert: "You aren't allowed to do that"
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

    if @article.save
      redirect_to article_path(@article)
    else
      flash[:alert] = "Por favor verifica los campos con errores"
      render :new      
    end
  end

  def edit; end

  def update
    @article.update(article_params)

    if @article.save
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    @article.destroy

    redirect_to articles_path
  end

  def search
    @parameter = params[:keyword].downcase
    @results = Article.search_results(@parameter)
    @categories = Category.all
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
