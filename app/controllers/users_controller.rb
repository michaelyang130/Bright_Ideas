class UsersController < ApplicationController
 
  def index
  end

  def create
    new_user = User.create(user_params)
    if new_user.save
      session[:user_id] = new_user.id
      redirect_to "/bright_ideas"
    else
      flash[:errors] = new_user.errors.full_messages
      redirect_to '/'
    end
  end

  def new
  end

  def edit
  end

  def show
    @user = User.where(id: params[:id]).first
  end

  def update
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :alias, :email, :password, :password_confirmation)
  end
end
