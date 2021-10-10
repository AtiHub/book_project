class UsersController < ApplicationController
  def index
  end

  def profile
    @user = User.find(params[:user_id])
    @books = @user.books.visibles
  end
end
