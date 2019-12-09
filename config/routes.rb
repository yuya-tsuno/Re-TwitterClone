Rails.application.routes.draw do

  root 'tweets#top'
  
  resources :tweets do
    collection do
      post :confirm
    end
  end

end
