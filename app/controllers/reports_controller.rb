class ReportsController < ApplicationController

  def index
    @reports = Report.order('created_at DESC').page(params[:page]).per(5)
  end

  def new #投稿画面の作成
    @report = Report.new
  end

  def create
    Report.create(destination: report_params[:destination], month: report_params[:month], season: report_params[:season], number_of_nights: report_params[:number_of_nights], transportation: report_params[:transportation], budget: report_params[:budget], text: report_params[:text], user_id: current_user.id)
  end

  def show
    @report = Report.find(params[:id])
    
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    report = Report.find(params[:id])
    if report.user_id == current_user.id
      report.update(report_params)
    end
  end

  def destroy
    report = Report.find(params[:id])
    report.destroy if report.user_id == current_user.id
  end

  def search
    @reports = Report.where(destination: "#{params[:keyword]}").order('created_at DESC').page(params[:page]).per(5)
  end






private
  def report_params
    params.require(:report).permit(:destination, :month, :season, :number_of_nights, :transportation, :budget, :text)
  end


end
