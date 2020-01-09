class ReviewsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to (root_path)
    else
      render action: "new"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(
      :title,
      :text,
      :year,
      :month,
      :day
    )
  end
end
