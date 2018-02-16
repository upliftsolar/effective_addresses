Rails.application.routes.draw do
  mount EffectiveAddresses::Engine => '/', :as => 'effective_addresses'
end

EffectiveAddresses::Engine.routes.draw do
  scope module: 'effective' do
    match 'addresses/subregions/:country_code', to: 'addresses#subregions', as: 'address_subregions', via: :get
  end
end
