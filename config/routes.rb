Rails.application.routes.draw do
  
  root 'home#index'

  get 'consulting/school' => 'consulting#school'
  get 'consulting/financial' => 'consulting#financial'
end
