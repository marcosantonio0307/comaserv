Rails.application.routes.draw do
  
  root 'home#index'

  get 'consulting/school' => 'consulting#school'
  get 'consulting/financial' => 'consulting#financial'
  get 'consulting/company' => 'consulting#company'
  get 'consulting/accounting' => 'consulting#accounting'
  get 'consulting/public' => 'consulting#public'

  get 'contacts/doubt' => 'contacts#doubt'
  get 'contacts/budget' => 'contacts#budget'
  get 'contacts/mycontacts' => 'contacts#mycontacts'

  get 'institutional/me' => 'institutional#me'
  get 'institutional/equip' => 'institutional#equip'
end
