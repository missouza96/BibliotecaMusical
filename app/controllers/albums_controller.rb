class AlbumsController < ApplicationController
    def index
		@albums = Album.order(:tracks)
	end
end