Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :students do
        resources :payments
      end 
    end
  end
end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


#fetch(`https://localhost:3000/api/v1/payments`) will not exist
#fetch(`https://localhost:3000/api/v1/students/1/payments`) will exist
