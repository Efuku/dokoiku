class PlansController < ApplicationController
  def index
   @plans = Plan.order('created_at DESC').page(params[:page]).per(5)
  end

  def new   #投稿画面の作成
    @plan = Plan.new
  end

  def create    #投稿の処理
    Plan.create(create_params)
  end


  private
  def create_params
    params.require(:plan).permit(:destination, :season, :number_of_nights, :transportation, :budget, :remarks)
    
  end

end
