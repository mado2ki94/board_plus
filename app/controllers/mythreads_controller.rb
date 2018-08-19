class MythreadsController < ApplicationController
  before_action :find_mythread, only: [:edit, :update, :destroy, :show]
  def index
    @mythreads = MyThread.all
  end

  def show
  end

  def new
    @mythread = MyThread.new
  end

  def create
    @mythread = MyThread.new(mythread_params)
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
      @mythread = MyThread.find(params["id"])
    end

    def mythread_params
      params.require(:mythread).permit(:title, :comment)
    end
end
