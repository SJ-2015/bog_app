class CreaturesController < ApplicationController
	def index
		@creatures = Creature.all
		render :index
	end

	def new
		@creature = Creature.new
		render :new
	end

	def create
		new_creature = params.require(:creature).permit(:name, :description)
		#take data from params and set new var, use params.require
		creature = Creature.create(new_creature)
		# create in database use Schema.create

		# redirect to show page; #{} is variable insersion into a string, so the variable still computes (same as " " + variabl " " in js)
		redirect_to "/creatures/#{creature.id}"
		
	end

	def show
		id = params[:id]
		@creature = Creature.find(id)
		render :show
	end


end
