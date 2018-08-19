class CommentsController < ApplicationController
  before_action :find_comment, only: [:edit, :update, :destroy]

  def create
    @mythread = Mythread.find(params[:comment][:mythread_id])
    @comment = @mythread.comments.build(comment_params)
    @comment.save
    redirect_to @mythread
  end

  def edit
  end

  def update
    @comment.update_attributes(comment_params)
    redirect_to "/mythreads/#{@comment.mythread_id}"
  end

  def destroy
    @comment.destroy
    redirect_to "/mythreads/#{@comment.mythread_id}"
  end

  private

    def find_comment
      @comment = Comment.find(params["id"])
    end

    def comment_params
      params.require(:comment).permit(:user_id, :mythread_id, :comment)
    end
end
