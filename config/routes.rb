Rails.application.routes.draw do
  # Routes for the Survey_resposne resource:
  devise_for :users
  get "/", :controller => "home", :action => "start"

  # Questions
  get "/q1", :controller => "survey_resposnes", :action => "q1"
  get "/q2", :controller => "survey_resposnes", :action => "q2"
  get "/q3", :controller => "survey_resposnes", :action => "q3"
  get "/q4", :controller => "survey_resposnes", :action => "q4"
  get "/q5", :controller => "survey_resposnes", :action => "q5"
  get "/q6", :controller => "survey_resposnes", :action => "q6"
  get "/q7", :controller => "survey_resposnes", :action => "q7"
  get "/q8", :controller => "survey_resposnes", :action => "q8"
  get "/q9", :controller => "survey_resposnes", :action => "q9"
  get "/q10", :controller => "survey_resposnes", :action => "q10"
  get "/q11", :controller => "survey_resposnes", :action => "q11"
  get "/q12", :controller => "survey_resposnes", :action => "q12"
  get "/A1a", :controller => "survey_resposnes", :action => "A1a"
  get "/A3g", :controller => "survey_resposnes", :action => "A3g"
  get "/C1a", :controller => "survey_resposnes", :action => "C1a"
  get "/C3", :controller => "survey_resposnes", :action => "C3"
  get "/C4", :controller => "survey_resposnes", :action => "C4"
  get "/C5", :controller => "survey_resposnes", :action => "C5"
  get "/C6", :controller => "survey_resposnes", :action => "C6"
  get "/C7", :controller => "survey_resposnes", :action => "C7"
  get "/I1", :controller => "survey_resposnes", :action => "I1"

  post "/create_survey_resposne", :controller => "survey_resposnes", :action => "create"
  get "/ineligible", :controller => "survey_resposnes", :action => "ineligible"
  # READ
  get "/survey_resposnes", :controller => "survey_resposnes", :action => "index"
  get "/survey_resposnes/:id", :controller => "survey_resposnes", :action => "show"

  # UPDATE
  get "/survey_resposnes/:id/edit", :controller => "survey_resposnes", :action => "edit"
  post "/update_survey_resposne/:id", :controller => "survey_resposnes", :action => "update"

  # DELETE
  get "/delete_survey_resposne/:id", :controller => "survey_resposnes", :action => "destroy"
  #------------------------------


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
