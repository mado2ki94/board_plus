class CommentsController < ApplicationController
  before_action :find_comment, only: [:edit, :update, :destroy]

  def create
    @comment.new(comment_params)
    @comment.save
    redirect_to mythread_path
  end

  def edit
  end

  def update
    @comment.update_attributes(comment_params)
    redirect_to mythread_path
  end

  def destroy
    @comment.destroy
    redirect_to mythread_path
  end

  private

    def find_comment
      @comment = Comment.find(params["id"])
    end

    def comment_params
      params.require(:comment).permit(:comment)
    end
end
