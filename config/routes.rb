Rails.application.routes.draw do
  resources :valleys
  root "dinosaurs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get "dinosaurs" => "dinosaurs#index"
  #get "dinosaurs/new" => "dinosaurs#new", as: :new_dinosaur
  #get "dinosaurs/:id" => "dinosaurs#show", as: :dinosaur

  #post "dinosaurs" => "dinosaurs#create"
  resources :dinosaurs

end
