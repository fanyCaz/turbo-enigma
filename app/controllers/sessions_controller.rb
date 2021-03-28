class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email])
		if user.present? && user.authenticate(params[:session][:password])
			reset_session
			log_in user
			redirect_to root_path 
		else
			flash[:alert] = "El usuario o contraseña son incorrectos"
			render :new
		end
	end

	def destroy
		log_out
		redirect_to root_path
	end

end
