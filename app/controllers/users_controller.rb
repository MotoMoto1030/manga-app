class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @comics = current_user.comics
    @users = User.all
  end
end
