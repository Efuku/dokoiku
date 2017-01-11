class PlansController < ApplicationController

before_action :move_to_root, except: :index

  def index
   @plans = Plan.order('created_at DESC').page(params[:page]).per(5)
  end

  def new   #投稿画面の作成
    @plan = Plan.new
  end

  def create    #投稿の処理
    Plan.create(destination: plan_params[:destination], month: plan_params[:month], season: plan_params[:season], number_of_nights: plan_params[:number_of_nights], transportation: plan_params[:transportation], budget: plan_params[:budget], remarks: plan_params[:remarks], user_id: current_user.id)
  end

  def show
    @plan = Plan.find(params[:id])
    @suggestion = Suggestion.new
    @suggestions = @plan.suggestions

  end

  def destroy
    plan = Plan.find(params[:id])
    plan.destroy if plan.user_id == current_user.id
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def update
    plan = Plan.find(params[:id])
    if plan.user_id == current_user.id
      plan.update(plan_params)
    end
  end

  def search
    @plan = Plan.where('destination LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end


  private
  def plan_params
    params.require(:plan).permit(:destination, :month, :season, :number_of_nights, :transportation, :budget, :remarks)
  end

  def move_to_root
  redirect_to "/" unless user_signed_in?
  end



end
