<<<<<<< HEAD
Project5::Application.routes.draw do
  
  get "static_pages/home"
  get "static_pages/help"
  resources :microposts
  resources :sessions, only: [:new, :create, :destroy]  
  resources :microposts, only: [:new, :create, :destroy, :show]
=======
SampleApp::Application.routes.draw do
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  resources :users do
    member do
      get :following, :followers
    end
  end
<<<<<<< HEAD
  resources :microposts do
    resources :comments
  end

  resources :relationships, only: [:create, :destroy]
  
  # match '/users', to: "users#index", via: 'get'
  match '/users/new', to: "users#new", via: 'get'
  match '/', to: 'static_pages#home', via: 'get'  
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  resources :advertisements 
  match '/advertisements', to: "advertisements#index", via: 'get'
  match '/advertisements/new', to: "advertisements#new", via: 'get'
  

=======
  resources :sessions,   only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy, :show]
  resources :relationships, only: [:create, :destroy]
  
  root  'static_pages#home'
  match '/signup', to: "users#new", via: 'get'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  #match '/microposts', to: 'microposts#show', via: 'get'
 
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
<<<<<<< HEAD
    root 'static_pages#home'
=======
  # root 'welcome#index'
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
