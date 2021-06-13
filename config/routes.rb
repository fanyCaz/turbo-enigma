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
  get "/password", to: "passwords#edit", as: :edit_password
  patch "/password", to: "passwords#update"
	
	# RESOURCES
	resources :users
	resources :book

end
