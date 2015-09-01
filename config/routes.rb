ActionController::Routing::Routes.draw do |map|
  
  # Ruta para la accion mostrar
  map.connect '/posts/mostrar', :controller => 'posts', :action => 'mostrar'
   map.connect '/admin/', :controller => 'posts'
  
  map.resources :posts, :has_many => :comments
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  # map.root :controller => "posts"
  map.root :controller => "posts", :action => "mostrar"
end
