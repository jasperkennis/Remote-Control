class AppsController < ApplicationController
	def index
	end
	
	def new
		@app = App.new
		
		respond_to do |format|
			format.html # new.html.erb
			format.json { render :json => @post }
		end
	end
end
