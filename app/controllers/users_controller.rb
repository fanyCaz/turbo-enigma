class UsersController < ApplicationController
  def new
    #creates an instance of the variable in memory
    #when is with '@' is available in the view
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #session cookies
      session[:user_id] = @user.id
      reset_session
      log_in @user
      flash[:success] = "Bienvenidx"
      redirect_to root_path
    else
      flash[:alert] = "Ha ocurrido un error"
      render :new
    end
  end

  private

  def user_params
    #require raises error if not present
    params.require(:user).permit(
      :username,
      :email,
      :password,
      :password_confirmation
    )
  end
end
