Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  get 'home/company'
  get 'reservation/solicitudCliente'
  get 'reservation/solicitudChofer'
  get 'reservation/index'
  get 'reservation/login'
  get 'reservation/panel'
  get 'reservation/resumen'
  get 'reservation/:id', to: 'reservation#show', as: 'reservation'
  post 'reservation/create'
  put 'reservation/:id', to: 'reservation#update'
  patch 'reservation/:id', to: 'reservation#update'
  post 'reservation/panel' => 'reservation#consultar'
  post   'reservation/login'   => 'reservation#createSessionCustomer'
  delete 'reservation/logout'  => 'reservation#destroySessionCustomer'
  get 'driver/login'
  get 'driver/panel'
  post   'driver/login'   => 'driver#createSessionDriver'
  delete 'driver/logout'  => 'driver#destroySessionDriver'
  resources :customer
  resources :driver

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
