class StaticsController < ApplicationController
	def index
    flash[:notice] = "Hola, !"
		if session[:user_id]
			@user = User.find_by(id: session[:user_id])
		end
	end

	def about
	end
end
