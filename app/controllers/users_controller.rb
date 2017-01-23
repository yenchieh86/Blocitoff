class UsersController < ApplicationController
  before_action :check_user

  def show
    @user = User.find(params[:id])
  end

  private

  def check_user
    @user = User.find(params[:id])
    if @user != current_user
      flash[:alert] = "Sorry, you are not allow to see other user's page."
      redirect_to root_path
    end
  end
end
