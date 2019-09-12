Rails.application.routes.draw do
  
  devise_for :users
  root 'home#index'

  get 'consulting/school' => 'consulting#school'
  get 'consulting/financial' => 'consulting#financial'
  get 'consulting/company' => 'consulting#company'
  get 'consulting/accounting' => 'consulting#accounting'
  get 'consulting/public' => 'consulting#public'

  get 'contacts/contacts' => 'contacts#contacts'

  get 'forms/doubt' => 'forms#doubt'
  get 'forms/budget' => 'forms#budget'
  get 'forms/work' => 'forms#work'

  get 'courses' => 'courses#index'
  get 'courses/:id' => 'courses#show', as: :course

  get 'institutional/me' => 'institutional#me'
  get 'institutional/equip' => 'institutional#equip'  

  get 'admin/courses' => 'admin#courses', as: :admin_courses
  get 'admin/courses/:id/edit' => 'admin#edit_course', as: :edit_course
  get 'admin/courses/new' => 'admin#new_course', as: :new_course
  get 'admin/mypictures' => 'admin#mypictures', as: :admin_mypictures
  get 'admin/mypictures/new' => 'admin#new_picture', as: :new_picture
  get 'admin/mypictures/:id' => 'admin#show_picture', as: :picture
  get 'admin/doubts/index' => 'admin#doubts_index'
  get 'admin/budgets/index' => 'admin#budgets_index'
  get 'admin/resumes/index' => 'admin#resumes_index'
  get 'admin/doubts_open' => 'admin#doubts_open'
  get 'admin/doubts_closed' => 'admin#doubts_closed'
  get 'admin/budgets_open' => 'admin#budgets_open'
  get 'admin/budgets_closed' => 'admin#budgets_closed'
  get 'admin/resumes_open' => 'admin#resumes_open'
  get 'admin/resumes_closed' => 'admin#resumes_closed'

  get 'forms/:id/completed' => 'forms#completed', as: :completed_form
  get 'forms/confirm' => 'forms#confirm'

  resources :admin
  resources :courses
  resources :forms, only:[:new, :create, :show]

  resources :mypictures, only:[:index, :create, :show] do
    resources :file_uploads, only:[:new, :create, :destroy]
  end
end
