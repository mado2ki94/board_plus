class MythreadsController < ApplicationController
  before_action :find_mythread, only: [:edit, :update, :destroy, :show]
  def index
    @mythreads = Mythread.all
  end

  def show
    @comment = @mythread.comments.build
    @comments = Comment.where(mythread_id: @mythread.id)
  end

  def new
    @mythread = current_user.mythreads.build
  end

  def create
    @mythread = current_user.mythreads.build(mythread_params)
    @mythread.save
    redirect_to @mythread
  end

  def edit
  end

  def update
    @mythread.update_attributes(mythread_params)
    redirect_to @mythread
  end

  def destroy
    @mythread.destroy
    redirect_to @mythread
  end

  private

    def find_mythread
      @mythread = Mythread.find(params["id"])
    end

    def mythread_params
      params.require(:mythread).permit(:title, :comment)
    end
end
