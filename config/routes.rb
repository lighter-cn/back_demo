Rails.application.routes.draw do
  root to: 'api/articles#index'
  namespace :api do
    resources :articles, except: [:new, :edit] do
      collection do
        get :title
      end
    end
  end
end
