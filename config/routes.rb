Rails.application.routes.draw do
  # Routes for the Session participant resource:

  # CREATE
  post("/insert_session_participant", { :controller => "session_participants", :action => "create" })
          
  # READ
  get("/session_participants", { :controller => "session_participants", :action => "index" })
  
  get("/session_participants/:path_id", { :controller => "session_participants", :action => "show" })
  
  # UPDATE
  
  post("/modify_session_participant/:path_id", { :controller => "session_participants", :action => "update" })
  
  # DELETE
  get("/delete_session_participant/:path_id", { :controller => "session_participants", :action => "destroy" })

  #------------------------------

  # Routes for the User book resource:

  # CREATE
  post("/insert_user_book", { :controller => "user_books", :action => "create" })
          
  # READ
  get("/user_books", { :controller => "user_books", :action => "index" })
  
  get("/user_books/:path_id", { :controller => "user_books", :action => "show" })
  
  # UPDATE
  
  post("/modify_user_book/:path_id", { :controller => "user_books", :action => "update" })
  
  # DELETE
  get("/delete_user_book/:path_id", { :controller => "user_books", :action => "destroy" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  post("/insert_comment", { :controller => "comments", :action => "create" })
          
  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  
  get("/comments/:path_id", { :controller => "comments", :action => "show" })
  
  # UPDATE
  
  post("/modify_comment/:path_id", { :controller => "comments", :action => "update" })
  
  # DELETE
  get("/delete_comment/:path_id", { :controller => "comments", :action => "destroy" })

  #------------------------------

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
