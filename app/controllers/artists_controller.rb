class ArtistsController < ApplicationController
	def index
		@artists = Artist.order(:name)
	end

	def show
		@artists = Artist.find(params[:id])
	end

end