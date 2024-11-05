Rails.application.routes.draw do
  
  get("/", { :controller => "misc", :action => "homepage" })
  resources :directors, only: [:index, :show]
  
end
