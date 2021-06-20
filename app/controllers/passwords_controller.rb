class PasswordsController < ApplicationController
  before_action :require_user_logged_in!

  def edit
  end

  def update
    if current_user.update(password_params)
      flash[:success] = "Se ha cambiado exitosamente"
			redirect_to root_path
    else
      render :edit
    end
  end

  private
#this is not an action, is a helper method
  def password_params
    params.require(:user)
      .permit(:password,:password_confirmation)
  end
end
