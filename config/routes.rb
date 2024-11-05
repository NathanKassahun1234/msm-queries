Rails.application.routes.draw do
  
  get("/", { :controller => "misc", :action => "homepage" })
  resources :directors, only: [:index, :show]
  
  get("/movies", { :controller => "movies", :action => "index"})
  get("/movies/:the_id", { :controller => "movies", :action => "show"})
end
