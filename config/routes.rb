Rails.application.routes.draw do
  # Routes for the Book resource:

  # CREATE
  post("/insert_book", { :controller => "books", :action => "create" })
          
  # READ
  get("/books", { :controller => "books", :action => "index" })
  
  get("/books/:path_id", { :controller => "books", :action => "show" })
  
  # UPDATE
  
  post("/modify_book/:path_id", { :controller => "books", :action => "update" })
  
  # DELETE
  get("/delete_book/:path_id", { :controller => "books", :action => "destroy" })

  #------------------------------

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
