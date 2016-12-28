class ReportsController < ApplicationController

  def index
    @reports = Report.order('created_at DESC').page(params[:page]).per(5)
  end

  def new #投稿画面の作成
    @report = Report.new
  end

  def create
    Report.create(destination: create_params[:destination], month: create_params[:month], season: create_params[:season], number_of_nights: create_params[:number_of_nights], transportation: create_params[:transportation], budget: create_params[:budget], text: create_params[:text], user_id: current_user.id)
  end

  def show
    @report = Report.find(params[:id])
    
  end






private
  def create_params
    params.require(:report).permit(:destination, :month, :season, :number_of_nights, :transportation, :budget, :text)
  end


end
