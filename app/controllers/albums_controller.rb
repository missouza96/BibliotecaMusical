class AlbumsController < ApplicationController
    def index
		@albums = Album.order(:title) 
	end

	def show
		@album = Album.find(params[:id])
	end

	def edit
		@album = Album.find(params[:id])		
	end

	def update
		@album = Album.find(params[:id])

		if @album.update_attributes(album_params)
			redirect_to @album
		else
			render :edit
		end
	end


	private 
	def album_params
		params.require(:album).permit(:title)
	end
end