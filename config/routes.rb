ShredEpidemic::Application.routes.draw do
  resources :about
  resources :contact
  resources :catigories
  resources :products
  resources :customers
  resources :orders
  resources :lineitems
  resources :provincestates


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root :to => "store#index", :via => :get
  match 'store/:id' => 'store#show', :as => :store_product, :via => :get
  
  match 'search' => 'store#search', :as => 'search', :via => :get

  match 'search_results' => 'store#search_results', :as => 'search_results', :via => :post


  match 'search_by_catigory' => 'store#search_by_catigory', :as => 'search_by_catigory', :via => :get

  match 'search_results_by_catigory' => 'store#search_results_by_catigory', :as => 'search_results_by_catigory', :via => :post
  match 'sort_results' => 'store#sort_results', :as => 'sort_results', :via => :get
  match 'sort_results_acc' => 'store#sort_results_acc', :as => 'sort_results_acc', :via => :get
  match 'sort_results_amp' => 'store#sort_results_amp', :as => 'sort_results_amp', :via => :get
  match 'sort_results_bass' => 'store#sort_results_bass', :as => 'sort_results_bass', :via => :get
  match 'cart' => 'store#cart', :as => 'cart', :via => :get

  match 'about_us' => 'store#about_us', :as => 'about_us', :via => :get
  match 'contact_us' => 'store#contact_us', :as => 'contact_us', :via => :get
  #match 'sort_by_catigory_keyword' => 'store#sort_results_catigory_keyword', :as => 'sort_by_catigory_keyword', :via => :get
  #  resources :products do
  #     member do
  #       get :add_item
  #       get :remove_item
  #     end
  # end
   

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
