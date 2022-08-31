Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/gyms', to: 'gyms#index'
  get '/gyms/new', to:'gyms#new'
  post '/gyms', to: 'gyms#create'
  get '/gyms/:id/edit', to: 'gyms#edit'
  patch '/gyms/:id', to: 'gyms#update'
  get '/gyms/:id', to: 'gyms#show'
  get '/instructors', to: 'instructors#index'
  get '/instructors/:id', to: 'instructors#show'
  get '/gyms/:id/instructors', to: 'gyms#teaching_staff'
end
