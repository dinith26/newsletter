class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    converted = params['preferences'].to_json
    @user = User.new({email: params['user']['email'], preferences: params['preferences'].to_json})

    if @user.save
      redirect_to root_path, notice: "Success"
    else
      render :index
    end
  end

  private

end
