Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

 root to: "homes#top"
 
  resources :books
  
#   get 'index' => 'books#index'
#   名前変更：index.html.erb → books.html.erb ✅

#   post 'index' => 'books#create'
#   名前変更：index.html.erb → books.html.erb ✅

#   get 'new_books' => 'books#new'
#   これはそもそもない！！！

#   get 'edit/:id' => 'books#edit'
#   URL先を変：'edit/:id' → 'books/:id/edit'
#   名前変更：'edit/:id' → as: 'edit_book'

#   get 'show/:id' => 'books#show'
#   URL先を変：'show/:id' → 'books/:id/'
#   名前変更：'show/:id' → as: 'book'

#   patch 'edit/:id' => 'books#update'
#   URL先を変：'show/:id' → 'books/:id/'

#   delete 'index/:id' => 'books#destroy', as: 'index_destroy'
#   名前変更：'index_destroy' → 
  
end

 # 