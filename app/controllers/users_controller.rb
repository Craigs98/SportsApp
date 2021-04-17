class UsersController < ApplicationController
  # X17126991 - Craig Smith
  def show
    @user = User.find(params[:id]) #finds user by id and displays posts
    @user_posts = @user.posts
  end
end
