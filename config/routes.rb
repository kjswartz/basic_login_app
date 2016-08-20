Rails.application.routes.draw do
  #############################################################################
  # User Types
  devise_for :users

  #############################################################################
  # API
  namespace :api, defaults: { format: :json } do
    namespace :v1, defaults: { format: :json } do
      # # User registration
      # resources :registrations, only: [:create, :update]
      # post :forgot_password, to: 'registrations#forgot_password'
      #
      # namespace :users do
      #   post :sessions, to: 'sessions#create'
      #   delete :sessions, to: 'sessions#destroy'
      # end
    end
  end
  #############################################################################

end
