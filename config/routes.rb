Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "powerade#read"
  get ":controller(/:action(/:id))"
  post ":controller(/:action(/:id))"
end
