class CreaturesController < ApplicationController
	def index
		@creatures = Creature.all
		render :index
	end

	def new
		render :new
	end

	def create
		new_creature = params.require(:creature).permit(:name, :description)

		#take data from params and set new var, use params.require
		
		Creature.create(new_creature)
		# create in database use Schema.create

		# redirect back to collection view page
		redirect_to "/creatures"
	end


end
