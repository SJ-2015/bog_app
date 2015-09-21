Rails.application.routes.draw do
    root to: 'creatures#index'


    get '/creatures', to: "creatures#index", as: "creatures"

    get '/creatures/new', to: 'creatures#new', as: "new_creature"


    #show individuals creations, put below new otherwise new will be send to show too
    get '/creatures/:id', to: 'creatures#show', as: "creature"

    get '/creatures/:id/edit', to: 'creatures#show', as: "edit_creature"

    post "/creatures", to: "creatures#create"

	# The update route
	# HTTP method 
	#put: resource creation / replacement at a given URL
    #patch: allows partial update, both rounte to update in Rails 4.0
    patch "/creatures/:id", to: "creatures#update"


    # the destroy route
    delete "/creatures/:id", to: "creatures#destroy"
end
