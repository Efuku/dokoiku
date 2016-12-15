class PlansController < ApplicationController

before_action :move_to_root, except: :index

  def index
   @plans = Plan.order('created_at DESC').page(params[:page]).per(5)
  end

  def new   #投稿画面の作成
    @plan = Plan.new
  end

  def create    #投稿の処理
    Plan.create(create_params)
  end

  def show
    @comment = Comment.new
    @plan = Plan.find(params[:id])
    @comments = @plan.comments
  end


  private
  def create_params
    params.require(:plan).permit(:destination, :season, :number_of_nights, :transportation, :budget, :remarks)
  end

  def move_to_root
  redirect_to "/" unless user_signed_in?
  end



end
