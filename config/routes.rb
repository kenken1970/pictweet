Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show]
end


# Rails.application.routes.draw do
#   devise_for :users
#   root 'tweets#index'               
#   get   'tweets'  =>  'tweets#index'        #一覧表示
#   get 'tweets/new' => 'tweets#new'          #投稿画面
#   post 'tweets' => 'tweets#create'          #投稿完了
#   delete 'tweets/:id' => 'tweets#destroy'   #削除
#   get 'tweets/:id/edit' => 'tweets#edit'    #編集画面
#   patch 'tweets/:id'  => 'tweets#update'    #編集完了
#   get 'tweets/:id' => 'tweets#show'         #ツイート詳細画面
#   get 'users/:id' => 'users#show'           #マイページ
# end