Rails.application.routes.draw do
  resources :todo_lists do
    resources :todo_items
      member do
        patch :complete
    end
  end

  root "todo_lists#index"
end
