Rails.application.routes.draw do
  # resources :birds, only: [:index, :show, :create, :update, :destroy] 
  resources :birds #since using all 5 CRUD no need for the "only" code above.
  patch "/birds/:id/like", to: "birds#increment_likes"
end
