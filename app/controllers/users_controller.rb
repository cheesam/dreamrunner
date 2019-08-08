class UsersController < ApplicationController
  before_action :set_user

  def show
    @sleeps = @user.sleeps
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
