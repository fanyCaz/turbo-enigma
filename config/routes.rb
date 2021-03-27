Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	root "statics#index"
	# this get goes to controller#action
	get "/sobre-esto", to: "statics#about"

	get "/registro", to: "users#new"
	resources :users

end
