module SessionsHelper

	def log_in(user)
		session[:user_id] = user.id
	end

	def set_current_user
    current_user
	end

	def current_user
		if session[:user_id]
			@current_user ||= User.find_by(id: session[:user_id])
		end
	end

	def logged_in?
		!current_user.nil?
	end

	def log_out
		reset_session
		@current_user = nil
	end

  def require_user_logged_in!
    redirect_to login_path, alert: "Debes estar registrado"
  end

end
