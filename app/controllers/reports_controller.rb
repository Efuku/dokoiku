class ReportsController < ApplicationController

  def index
    
  end

  def new #投稿画面の作成
    @report = Report.new
  end

  def create
    #コメント投稿の処理を記載する
  end



end
