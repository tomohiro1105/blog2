Rails.application.routes.draw do
  devise_for :users
  root  "blogs#index"
  get   "/new"      => "blogs#new"
  post  "/complete" => "blogs#create"
  post "/login"     => "blogs#login"
  delete "/:id"     => "blogs#destroy"
  get '/:id/edit' => 'blogs#edit' 
end
