Rails.application.routes.draw do
  root 'calc#input'
  get '/calc/output', to: 'calc#output'
  get 'calc/input'
  get 'calc/output'

end
