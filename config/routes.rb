Rails.application.routes.draw do
	localized do
		root 'pages#home'
	end
	
	localized do
		resources :pages
	end

	ActiveAdmin.routes(self)
	devise_for :admin_users, ActiveAdmin::Devise.config
end
