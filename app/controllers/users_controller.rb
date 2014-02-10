class UsersController < ApplicationController
  

  def index
    if current_user && current_user.admin?
      @users = User.all
    else
      render :status => 403, :text => "Forbodden!"
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
