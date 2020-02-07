Rails.application.routes.draw do
  root to: 'index#inicial'
  
  get 'inicial', :to => 'index#inicial'
  get 'cartaz', :to => 'index#cartaz'
  get 'sessoes', :to => 'index#sessoes'
  get 'produtos', :to => 'index#produtos'
  get 'talk', :to => 'index#talk'
  get 'desenvolvedor', :to => 'index#desenvolvedor'

  resources :sessaos
  resources :filmes
  resources :bombonieres
  resources :cinemas
  resources :reclamacaos
  resources :promocaos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
