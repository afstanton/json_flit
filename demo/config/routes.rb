Rails.application.routes.draw do
  get '/:page', to: 'welcome#show'

  root 'welcome#index'
end
