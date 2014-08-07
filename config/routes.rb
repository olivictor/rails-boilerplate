Rails.application.routes.draw do
	localized do
		root 'pages#home'
	end
	
	localized do
		resources :pages
    get '/contact', to: 'contacts#new', as: :contacts
    post '/contact', to: 'contacts#create', as: :contacts
	end

  resources :contact, only: [:new, :create]

	ActiveAdmin.routes(self)
	devise_for :admin_users, ActiveAdmin::Devise.config
end
