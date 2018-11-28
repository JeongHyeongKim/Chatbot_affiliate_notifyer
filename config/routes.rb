Rails.application.routes.draw do
  
  get 'admin/admin' => 'admin#admin'
  post 'admin/engineering_order' => 'admin#engineering_order'
  post 'admin/agriculture_order' => 'admin#agriculture_order'
  post 'admin/electronic_order' => 'admin#electronic_order'
  post 'admin/humanity_order' => 'admin#humanity_order'
  post 'admin/medical_order' => 'admin#medical_order'
  post 'admin/social_order' => 'admin#social_order'
  post 'admin/teacher_order' => 'admin#teacher_order'
  post 'admin/life_science_order' => 'admin#life_science_order'
  post 'admin/natural_order' => 'admin#natural_order'

  get 'admin/engineering_edit/:post_id' => 'admin#engineering_edit'
  get 'admin/agriculture_edit/:post_id' => 'admin#agriculture_edit'
  get 'admin/electronic_edit/:post_id' => 'admin#electronic_edit'
  get 'admin/humanity_edit/:post_id' => 'admin#humanity_edit'
  get 'admin/medical_edit/:post_id' => 'admin#medical_edit'
  get 'admin/social_edit/:post_id' => 'admin#social_edit'
  get 'admin/teacher_edit/:post_id' => 'admin#teacher_edit'
  get 'admin/life_science_edit/:post_id' => 'admin#life_science_edit'
  get 'admin/natural_edit/:post_id' => 'admin#natural_edit'
  
  post 'admin/engineering_update/:post_id' => 'admin#engineering_update'
  post 'admin/agriculture_update/:post_id' => 'admin#agriculture_update'
  post 'admin/electronic_update/:post_id' => 'admin#electronic_update'
  post 'admin/humanity_update/:post_id' => 'admin#humanity_update'
  post 'admin/medical_update/:post_id' => 'admin#medical_update'
  post 'admin/social_update/:post_id' => 'admin#social_update'
  post 'admin/teacher_update/:post_id' => 'admin#teacher_update'
  post 'admin/life_science_update/:post_id' => 'admin#life_science_update'
  post 'admin/natural_update/:post_id' => 'admin#natural_update'
  
  get 'admin/engineering_destroy/:post_id' => 'admin#engineering_destroy'
  get 'admin/agriculture_destroy/:post_id' => 'admin#agriculture_destroy'
  get 'admin/electronic_destroy/:post_id' => 'admin#electronic_destroy'
  get 'admin/humanity_destroy/:post_id' => 'admin#humanity_destroy'
  get 'admin/medical_destroy/:post_id' => 'admin#medical_destroy'
  get 'admin/social_destroy/:post_id' => 'admin#social_destroy'
  get 'admin/teacher_destroy/:post_id' => 'admin#teacher_destroy'
  get 'admin/life_science_destroy/:post_id' => 'admin#life_science_destroy'
  get 'admin/natural_destroy/:post_id' => 'admin#natural_destroy'
  
  
  get '/keyboard' => 'api#api_init'
  post '/message' => 'api#api_message'
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
