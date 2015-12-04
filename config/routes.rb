Rails.application.routes.draw do
  root 'epicenter#feed'
  resources :tweets
  devise_for :users
  get 'epicenter/feed'
  get 'epicenter/show_user'
  get 'epicenter/now_following'
  get 'epicenter/unfollow'
  get 'user_profile' => 'epicenter#show_user'
  post 'now_following' => 'epicenter#now_following'
  post 'unfollow' => 'epicenter#unfollow'
end
