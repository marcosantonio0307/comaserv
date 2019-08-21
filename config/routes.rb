Rails.application.routes.draw do
  
  root 'home#index'

  get 'consulting/school' => 'consulting#school'
  get 'consulting/financial' => 'consulting#financial'

  get 'contacts/doubt' => 'contacts#doubt'
  get 'contacts/budget' => 'contacts#budget'
end
