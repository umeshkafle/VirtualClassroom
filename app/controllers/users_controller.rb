class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.create
      redirect_to root_url
    else
      redirect_to new_user_registration_path
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to root_url
    else
      redirect_to edit_user_registration_path
    end
  end

  def destroy
    @user.destroy
    redirect_to user_session_path, notice: "The user has successfully destroyed"
  end

  private

  def user_params
    params.require(:user).permit(:first_name,
                                 :last_name,
                                 :address,
                                 :phone_name,
                                 :email,
                                 :password,
                                 :passwor_confirmation)
  end
end
