Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'web#top'
  resources :web do
    collection do
      get "lunch"
      get "oseti"
    end
  end

  resources :reviews, only: [:new, :create] do
  end
end
