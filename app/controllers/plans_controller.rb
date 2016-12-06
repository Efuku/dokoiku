class PlansController < ApplicationController
  def index
    
  end

  def new   #投稿画面の作成
    @plan = Plan.new
  end

  def create    #投稿の処理
  end


end
