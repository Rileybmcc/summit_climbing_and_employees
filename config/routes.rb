Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/gyms', to: 'gyms#index'
  get 'gyms/:id', to: 'gyms#show'
  get '/instructors', to: 'instructors#index'
  get '/instructors/:id', to: 'instructors#profile'
  get '/gyms/:id/instructors', to: 'gyms#teaching_staff'
  get '/gyms/new_gym_form', to:'gyms#add_new_gym'
  post '/gyms' to 'gyms#create'
end
