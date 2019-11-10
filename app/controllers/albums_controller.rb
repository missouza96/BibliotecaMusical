class AlbumsController < ApplicationController
    def index
		@albums = Album.order(:title) 
	end