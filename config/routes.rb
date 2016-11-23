Rails.application.routes.draw do
  devise_for :editors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root 'articles#index' 
 get 'home' => 'articles#index'
 
 resources :articles do 
 	collection do 
 		get :search 
 	end 
 end 

 get 'new-post' => 'articles#new'
 resources :subscribers  
 get 'newsletter' => 'subscribers#new'

 get 'music' => 'pages#index_music'
 get 'cinema' => 'pages#index_cinema'
 get 'books' => 'pages#index_books'
 get 'culinary-art' => 'pages#index_food'
 get 'brands' => 'pages#index_brand'
 get 'events' => 'pages#index_event'
 get 'latest' => 'pages#app_index'

 delete 'logout' => 'devise/registrations#destroy' 

end
