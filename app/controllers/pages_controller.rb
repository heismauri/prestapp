class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @articles = Article.most_recent
    @categories = Category.ramdom_category
  end

  def show
    render template: "pages/#{params[:page]}"
  end
end
