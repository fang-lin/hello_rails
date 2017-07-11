Rails.application.routes.draw do
  get 'banana/info'

  resources :my_ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('/my_ideas')
end
