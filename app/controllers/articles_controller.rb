class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def taco
    redirect_to root_path
  end
end
