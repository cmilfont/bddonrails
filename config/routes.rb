ActionController::Routing::Routes.draw do |map|
  map.resources :exercicios
  map.resources :tipo_de_exercicios

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

