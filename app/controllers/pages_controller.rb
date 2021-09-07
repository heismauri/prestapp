class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @articles = Article.most_recent
    @categories = Category.ramdom_category
  end
end
