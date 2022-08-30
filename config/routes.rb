Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/gyms', to: 'gyms#index'
  get 'gyms/:id', to: 'gyms#show'
  get '/instructors', to: 'instructors#index'
  get '/instructors/:id', to: 'instructors#show'
  get '/gyms/:id/instructors', to: 'gyms#teaching_staff'
  # get '/gyms_forms/new', to:'gyms_forms#new'
  # post '/gyms_forms', to: 'gyms_forms#create'

  get '/gyms_forms/new', to:'gyms#new'
  post '/gyms', to: 'gyms#create'

end
