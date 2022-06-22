class MainsController < ApplicationController
  def index
    @mains = Main.all
  end
  
  def new
    @main = Main.new
  end
  
  def create
    @main = Main.new(params.require(:main).permit(:title, :checkbox, :memo, :start_at, :end_at))
     if @main.save
       flash[:notice] = "スケジュールを新規登録しました"
       redirect_to :mains
     else
       render"new"
     end
  end
  
  def show
  end
 
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
end

