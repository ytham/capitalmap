Finance::Application.routes.draw do
  get "articles/index"
  get "sustainability_data/corporate_social_responsibility"
  get "sustainability_data/corporate_governance"
  get "sustainability_data/environmental_data"
  get "commodities/oil"
  get "commodities/renewables"
  get "commodities/copper"
  get "commodities/gold"
  get "commodities/coal"
  get "securities/corporate_bonds"
  get "securities/soverign_bonds"
  get "securities/municipal_bonds"
  get "securities/equities"
  get "securities/equities/stock_growth"
  get "securities/etfs"
  get "currencies/largest_economies"
  get "economic_data/consumer_prices"
  get "economic_data/economic_activity"
  get "economic_data/leading_indicators"
  get "economic_data/national_accounts"
  get "economic_data/producer_prices"
  get "stocks/create"
  get "stocks/destroy"
  get "sessions/create"
  get "sessions/destroy"

  resources :users
  resources :stocks
  resources :economic_data
  resources :securities
  resources :commodities
  resources :currencies
  resources :sustainability_data
  resources :articles

  resources :sessions

  #match '/signup' => 'users#create', as: :create_user
  match '/financial_advisors', to: 'static#financial_advisors'
  match '/hedge_funds', to: 'static#hedge_funds'
  match '/investment_managers', to: 'static#investment_managers'
  match '/traders', to: 'static#traders' 
  match '/contact', to: 'static#contact'
  match '/about', to: 'static#about'
  match '/logout', to: 'sessions#destroy'

  root to: 'static#index'

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
