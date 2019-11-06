class ArtistsController < ApplicationController
	def index
		@artists = Artist.order(:name) #mostra todos
	end

	def show
		@artists = Artist.find(params[:id]) #mostra cada artista
	end
	def delete
		
	end
	def update

	end
end