class PasswordsController < ApplicationController
  def edit
  end

  def update
    if current_user.update(password_params)
			redirect_to sobre_esto_path
    else
      render :edit
    end
  end

  private

  def password_params
    params.require(:user)
      .permit(:password,:password_confirmation)
  end
end
