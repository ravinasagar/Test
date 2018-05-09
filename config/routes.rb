Rails.application.routes.draw do
  
  get 'facebook/index'

  get 'welcomes/index'

  get 'registrations/index'

  root 'uploaders#index'
  resources :uploaders

   resources :coffee_roasts
    post 'coffee_roasts/call' => 'coffee_roasts#call'
    #resources :registrations
    #get 'registrations/express' => 'registrations#express', :as => :registrations_express

    # get 'auth/:provider/callback', to: 'sessions#create'
    # get 'auth/failure', to: redirect('/')
    # get 'signout', to: 'sessions#destroy', as: 'signout'
  
   # get 'members/index'

  # devise_for :users, controllers: { sessions: 'members/sessions' }
  
  devise_for :members,controllers: { omniauth_callbacks: 'members/omniauth_callbacks' }
  #  root 'bookings#index'
  #  #resources :orders, :new => { :express => :get }
  #  resources :bookings
  #  resources :products do
  #   collection do
  #     get :express,:complete

  #   end
  #   resources :customer
  #   resources :charges
  # end
    # root 'charges#index'
    # # resources :customers
    # resources :charges
    # resources :twilios
    

 

  
  # resources :users
  # resources :posts do
  #   member do
  #     post :like
  #     post :comment
  #     post :comment_like
  #   end
  # end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
