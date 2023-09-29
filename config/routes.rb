Rails.application.routes.draw do
  resources :posts do
  end
  # get "/posts", to: "posts#index"
end
