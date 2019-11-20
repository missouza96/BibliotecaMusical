class AlbumsController < ApplicationController
    def index
		@albums = Album.filter(params['title''artist'])
		
	end

	def show
		@album = Album.find(params[:id])
		@tracks = @album.tracks
		
	end


	def edit
		 @artists = Artist.all
		
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


	def create
      @artists = Artist.all
      @album = Album.new(album_params)
      if @album.save
          redirect_to @album
      else
          render :new
      end
    end
  

	def new 
		@artists = Artist.all 
		@album = Album.new
	end


	private 
	def album_params
		params.require(:album).permit(:title, :artist)
	end
end