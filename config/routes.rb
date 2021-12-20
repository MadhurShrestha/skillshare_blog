Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "about" => "public#about", as: :about
  #get "about" can also be written as
  #get "about", controller: "public", action: "about",as: :about
  get "blog" => "public#blog", as: :blog
  # get "blog", controller: "public", action: "blog",as: :blog
  get "public" => "public#contact", as: :contact

  post "post/view" => "posts#save_post_view", as: :post_view
  root to: "public#homepage"
end
