class UsersController < ApplicationController
  def show
    @user = current_user
    @new_item = Item.new
  end
end
