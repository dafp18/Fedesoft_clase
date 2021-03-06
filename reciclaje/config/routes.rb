Rails.application.routes.draw do
  match '/oauth/test_request',  :to => 'oauth#test_request',  :as => :test_request, :via=> [:get, :post] 
  match '/oauth/token',         :to => 'oauth#token',         :as => :tokenost, :via=> [:get, :post]
  match '/oauth/access_token',  :to => 'oauth#access_token',  :as => :access_token, :via=> [:get, :post]
  match '/oauth/request_token', :to => 'oauth#request_token', :as => :request_token, :via=> [:get, :post]
  match '/oauth/authorize',     :to => 'oauth#authorize',     :as => :authorize, :via=> [:get, :post]
  match '/oauth',               :to => 'oauth#index',         :as => :oauth, :via=> [:get, :post]
  resources :oauth_clients
  match '/oauth/test_request',  :to => 'oauth#test_request',  :as => :test_request
  match '/oauth/token',         :to => 'oauth#token',         :as => :token
  match '/oauth/access_token',  :to => 'oauth#access_token',  :as => :access_token
  match '/oauth/request_token', :to => 'oauth#request_token', :as => :request_token
  match '/oauth/authorize',     :to => 'oauth#authorize',     :as => :authorize
  match '/oauth',               :to => 'oauth#index',         :as => :oauth
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
