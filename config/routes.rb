Rails.application.routes.draw do

    root to: 'creatures#index'
    get '/creatures', to: "creatures#index"

    get '/creatures/new', to: 'creatures#new'


    #show individuals creations, put below new otherwise new will be send to show too
    get '/creatures/:id', to: 'creatures#show'

    post "/creatures", to: "creatures#create"


end
