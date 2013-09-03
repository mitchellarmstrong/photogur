class PicturesController < ApplicationController

	def index
		#indexes all pictures from the database
		@pictures = Picture.all
	end

	def show
		#pulls single picture after searching the id number
    	@picture = Picture.find[params[:id].to_i]
	end


	def new
	end

	def create
    render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end


end