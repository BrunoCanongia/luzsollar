Rails.application.routes.draw do

  get 'foto/new'
  get 'foto/create'
  get 'foto/show'

  get  '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get  '/logout' => 'sessions#destroy'

  get 'pages/index'
  root 'pages#index'

  resources :users
  resources :produtos
  resources :fotos

  get '/ajax_m' => 'produtos#ajax_modelos'

  get 'produtos/cat/:categoria_id' => 'produtos#index' # temp, somente dev
  get '/super_led' => 'produtos#index', :categoria_id => 1
  get '/led' => 'produtos#index', :categoria_id => 2
  get '/eletronicas' => 'produtos#index', :categoria_id => 3
  get '/halogenas' => 'produtos#index', :categoria_id => 4
  get '/vapor' => 'produtos#index', :categoria_id => 5
  get '/luminarias' => 'produtos#index', :categoria_id => 6
  get '/refletores' => 'produtos#index', :categoria_id => 7








  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
