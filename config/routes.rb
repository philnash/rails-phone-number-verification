Rails.application.routes.draw do
  resources :phone_verifications, :only => [:new, :create] do |p|
    collection do
      get 'challenge'
      post 'verify'
      get 'success'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
