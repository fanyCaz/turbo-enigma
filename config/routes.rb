Rails.application.routes.draw do

	root "statics#index"
	# this get goes to controller#action
	# STATICS
	get "/sobre-esto", to: "statics#about"
	get 'sessions/new'
	get 'users/new'

	# USERS
	get "/registro", to: "users#new"
	post "/registro", to: "users#create"
	get "/login", to: "sessions#new"
	post "/login", to: "sessions#create"
	delete "/logout", to: "sessions#destroy"
	
	# RESOURCES
	resources :users

end
