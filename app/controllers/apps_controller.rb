class AppsController < ApplicationController
	def index
		@apps = App.all()
	end
	
	def new
		@app = App.new
		
		respond_to do |format|
			format.html # new.html.erb
			format.json { render :json => @post }
		end
	end
	
	def create
		@app = App.new(params[:app])
		
		respond_to do |format|
			if @app.save
				format.html { redirect_to(@app,
											:notice => 'Your app was created succesfully.') }
				format.json { render :json => @app,
											:status => :created, :location => @app }
			else
				format.html { render :action => "new" }
				format.json { render :json => @app.errors,
											:status => :unprocessable_entity }
			end
		end
	end
	
	def show
		@app = App.find(params[:id])
	end
end
