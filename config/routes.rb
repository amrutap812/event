Rails.application.routes.draw do
  resources :user_shedules, only: [:create ,:destroy]
  devise_for :users
  root 'welcome#index'
  resources :shedules, only: [:new ,:create ,:edit , :update, :destroy] 
  get 'my_eventshow' , to: 'users#my_eventshow'
  get 'booked_event' , to: 'users#booked_event'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
