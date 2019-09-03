Rails.application.routes.draw do
  
  root 'home#index'

  get 'consulting/school' => 'consulting#school'
  get 'consulting/financial' => 'consulting#financial'
  get 'consulting/company' => 'consulting#company'
  get 'consulting/accounting' => 'consulting#accounting'
  get 'consulting/public' => 'consulting#public'

  get 'contacts/doubt' => 'contacts#doubt'
  get 'contacts/budget' => 'contacts#budget'
  get 'contacts/contacts' => 'contacts#contacts'
  get 'contacts/work' => 'contacts#work'

  get 'courses' => 'courses#index'
  get 'courses/:id' => 'courses#show', as: :course

  get 'institutional/me' => 'institutional#me'
  get 'institutional/equip' => 'institutional#equip'
end
