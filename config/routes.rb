Rails.application.routes.draw do
  # get 'tweets/top'
  # get 'tweets/index'
  # get 'tweets/show'
  # get 'tweets/new'
  # get 'tweets/edit'
  # get 'tweets/create'
  # get 'tweets/update'
  # get 'tweets/destroy'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'tweets#top'
  
  resources :tweets do
    collection do
      post :confirm
    end
  end

end
