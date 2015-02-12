Rails.application.routes.draw do
  get 'welcome/index'

  netzke
  root 'welcome#index'
end
