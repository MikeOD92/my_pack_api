Rails.application.routes.draw do
  resources :packs do
    resources :catagories do
      resources :items
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
