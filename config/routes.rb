Rails.application.routes.draw do
  get '/', to:'static#welcome', as:'welcome'
  get '/welcome/params[:user]', to:'static#welcome'
  get '/gossip', to: 'static#gossip'
  get '/tag', to: 'static#tag'
  get '/team', to:'static#team'
  get '/contact', to:'static#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
