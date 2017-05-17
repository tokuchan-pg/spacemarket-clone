class UsersController < ApplicationController

  def edit; end

  def update
    user = User.find(params[:id])
    user.update(usertype: 2)
    redirect_to root_path
  end

end
