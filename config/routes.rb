Rails.application.routes.draw do
  root 'quizzes#home'

  get 'quizzes/question'
  get 'quizzes/answer'
  get 'quizzes/new'
  
  post 'quizzes/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
