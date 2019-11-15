class ArtistsController < ApplicationController
	def index
		@artists = Artist.order(:name)
		
	end

	def show
		@artist = Artist.find(params[:id]) 
		@albums = @artist.albums
		@albums = Album.where(artist: @artist.id)
	end

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

	end

	private 
	def artist_params
		params.require(:artist).permit(:name)
	end

end