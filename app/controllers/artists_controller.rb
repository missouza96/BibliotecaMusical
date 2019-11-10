class ArtistsController < ApplicationController
	def index
		@artists = Artist.order(:name) #mostra todos
	end

	def show
		@artist = Artist.find(params[:id]) #mostra cada artista
	end
<<<<<<< Updated upstream
	def edit
		@artist = Artist.find(params[:id])		
	end
	def update
		@artist = Artist.find(params[:id])

		if @artist.update_attributes(artist_params)
			redirect_to @artist
		else
			render :edit
		end
	end

	private 
	def artist_params
		params.require(:artist).permit(:name)
=======
	def new
		@artist = Artist.new
	end
	def create
		@artist = Artist.new(artist_params)
		if @artist.save
			redirect_to @artist
		else
			render :new	
		end
>>>>>>> Stashed changes
	end


end