class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @articles = Article.most_recent
    @categories = Category.ramdom_category
  end

  def show
    if params[:page] == "home"
      redirect_to root_path
    else
      render template: "pages/#{params[:page]}"
    end
  end
end
