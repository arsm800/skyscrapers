Rails.application.routes.draw do

  resources :cities do
    resources :skyscrapers
  end
  root 'cities#index'
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

# Prefix Verb   URI Pattern                                     Controller#Action
# city_skyscrapers GET    /cities/:city_id/skyscrapers(.:format)          skyscrapers#index
#        POST   /cities/:city_id/skyscrapers(.:format)          skyscrapers#create
# new_city_skyscraper GET    /cities/:city_id/skyscrapers/new(.:format)      skyscrapers#new
# edit_city_skyscraper GET    /cities/:city_id/skyscrapers/:id/edit(.:format) skyscrapers#edit
# city_skyscraper GET    /cities/:city_id/skyscrapers/:id(.:format)      skyscrapers#show
#        PATCH  /cities/:city_id/skyscrapers/:id(.:format)      skyscrapers#update
#        PUT    /cities/:city_id/skyscrapers/:id(.:format)      skyscrapers#update
#        DELETE /cities/:city_id/skyscrapers/:id(.:format)      skyscrapers#destroy
# cities GET    /cities(.:format)                               cities#index
#        POST   /cities(.:format)                               cities#create
# new_city GET    /cities/new(.:format)                           cities#new
# edit_city GET    /cities/:id/edit(.:format)                      cities#edit
#   city GET    /cities/:id(.:format)                           cities#show
#        PATCH  /cities/:id(.:format)                           cities#update
#        PUT    /cities/:id(.:format)                           cities#update
#        DELETE /cities/:id(.:format)                           cities#destroy
#   root GET    /                                               cities#index
