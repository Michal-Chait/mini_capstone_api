Rails.application.routes.draw do
  # get "/all_products" => "products#all_products"
  # get "/product/:id" => "products#show"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
end
