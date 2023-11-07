Rails.application.routes.draw do
  # Routes for the Group session resource:

  # CREATE
  post("/insert_group_session", { :controller => "group_sessions", :action => "create" })
          
  # READ
  get("/group_sessions", { :controller => "group_sessions", :action => "index" })
  
  get("/group_sessions/:path_id", { :controller => "group_sessions", :action => "show" })
  
  # UPDATE
  
  post("/modify_group_session/:path_id", { :controller => "group_sessions", :action => "update" })
  
  # DELETE
  get("/delete_group_session/:path_id", { :controller => "group_sessions", :action => "destroy" })

  #------------------------------

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
