class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = User.all.order(:created_at).page(params[:page])
  end

  def show
    @items_count = @user.items.count
    @items = @user.items.page(params[:page])
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

end
