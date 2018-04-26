Rails.application.routes.draw do
  
  resources :reviews

  resources :people do 
    resources :reviews 
  end 

  post 'auth_user' => 'authentication#authenticate_user'

  devise_for :users, :controllers => {sessions: 'sessions', registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
