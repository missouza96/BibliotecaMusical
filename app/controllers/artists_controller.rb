class ArtistsController < ApplicationController
	def index
		@artists = Artist.order(:name) #mostra todos
	end

	def show
		@artist = Artist.find(params[:id]) #mostra cada artista
		@albums  = @artist.albums
	end

	def destroy

	end

	def update

	end
end
