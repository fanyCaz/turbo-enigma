Rails.application.routes.draw do
  get 'book/index'
  get 'book/new'
  get 'book/create'
  get 'book/show'
  get 'book/edit'
  get 'book/update'
  get 'book/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	get 'sessions/new'
	get 'users/new'

	root "statics#index"
	# this get goes to controller#action
	# STATICS
	get "/sobre-esto", to: "statics#about"

	# USERS
	get "/registro", to: "users#new"
	get "/login", to: "sessions#new"
	post "/login", to: "sessions#create"
	delete "/logout", to: "sessions#destroy"
	
	# RESOURCES
	resources :users

end
