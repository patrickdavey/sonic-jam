Rails.application.routes.draw do
  resources :buffers do
    collection do
      get :compiled
    end
  end

  root to: 'buffers#index'
end
