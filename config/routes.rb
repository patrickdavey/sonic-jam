Rails.application.routes.draw do
  resources :buffers

  root to: 'buffers#index'
end
