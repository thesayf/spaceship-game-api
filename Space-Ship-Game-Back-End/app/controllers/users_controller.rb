class UsersController < ApplicationController

  def index
    byebug
    users = User.all
    render json: users, include: [:scores]
  end

  def create
      user = User.create(name: params[:name])
      render json: {user: user}
  end

end
