class MythreadsController < ApplicationController
  before_action :find_Mythread, only: [:edit, :update, :destroy, :show]
  def index
    @Mythreads = Mythread.all
  end

  def show
  end

  def new
    @Mythread = Mythread.new
  end

  def create
    @Mythread = Mythread.new(Mythread_params)
    @Mythread.save
    redirect_to @Mythread
  end

  def edit
  end

  def update
    @Mythread.update_attributes(Mythread_params)
    redirect_to @Mythread
  end

  def destroy
    @Mythread.destroy
    redirect_to @Mythread
  end

  private

    def find_Mythread
      @Mythread = Mythread.find(params["id"])
    end

    def Mythread_params
      params.require(:Mythread).permit(:title, :comment)
    end
end
