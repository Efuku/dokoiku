class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = current_user.nickname
    @plans = user.plans
  end
end
