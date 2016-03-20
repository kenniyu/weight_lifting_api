Rails.application.routes.draw do
  resources :routine_session_exercise_sets, except: [:new, :edit]
  resources :routine_exercise_sets, except: [:new, :edit]
  resources :exercise_sets, except: [:new, :edit]
  resources :routine_sessions, except: [:new, :edit]
  resources :routine_exercises, except: [:new, :edit]
  resources :exercises, except: [:new, :edit]
  resources :routines, except: [:new, :edit]

  resources :users, except: [:new, :edit] do
    resources :routines, except: [:new, :edit] do
      resources :exercises, except: [:new, :edit]
      resources :routine_exercise_sets, except: [:new, :edit]
    end

    resources :routine_sessions, except: [:new, :edit] do
      resources :routine_session_exercise_sets, except: [:new, :edit]
    end
  end

  get :token, controller: 'application'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # =begin
  # A user has many
  #   routines, each of which has many
  #     exercises, each of which has many
  #   sessions, which has one
  #     routine, which has many
  #       exercises, each of which has many
  #         exercise sets
  # =end

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
