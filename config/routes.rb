Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  # You can have the root of your site routed with "root"
  root 'welcome#index'

# resources :users do
#   resources :orders do
#     resources :orderlines
#   end
# end



  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get "users/" => "users#index"
  get "users/new" => "users#new", as: :new_user
  get "users/:id" => "users#show", as: :user
  post "users/" => "users#create"
  get "users/:id/edit" => "users#edit", as: :edit_user
  patch "users/:id" => "users#update"
  delete "users/:id" => "users#destroy"
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase


  get "items/" => "items#index"
  get "items/new" => "items#new", as: :new_item
  get "items/:id" => "items#show", as: :item
  post "items/" => "items#create"
  get "items/:id/edit" => "items#edit", as: :edit_item
  patch "items/:id" => "items#update"
  delete "items/:id" => "items#destroy"
  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  get "orders/" => "orders#index"
  # get "orders/new" => "orders#new", as: :new_order
  get "orders/:id" => "orders#show", as: :order
  # post "orders/" => "orders#create"
  # get "orders/:id/edit" => "orders#edit", as: :edit_item
  # patch "orders/:id" => "orders#update"
  # delete "orders/:id" => "orders#destroy"

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
