Rails.application.routes.draw do
  resources :buffers do
    collection do
      get :complete_listing
    end
  end

  root to: 'buffers#index'
end
