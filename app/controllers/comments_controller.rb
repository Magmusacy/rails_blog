class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comments_params)
    redirect_to @article
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(comments_params)
    @comment.destroy
    redirect_to @article
  end

  private

  def comments_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
