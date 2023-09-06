Rails.application.routes.draw do
  devise_for :users
  resources :blog_posts do
    resource :cover_image, only: [:destroy], module: :blog_posts
  end

  root "blog_posts#index"
end
