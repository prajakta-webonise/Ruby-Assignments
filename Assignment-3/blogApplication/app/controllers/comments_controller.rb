class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(params.require(:comment).permit(:commentor, :body))
    redirect_to article_path(@article)
  end 
end
