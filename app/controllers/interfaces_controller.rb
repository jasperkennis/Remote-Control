class InterfacesController < ApplicationController
	def index
		@interfaces = Interface.all()
	end
	
	def new
		@interface = Interface.new
		
		respond_to do |format|
			format.html # new.html.erb
			format.json { render :json => @post }
		end
	end
	
	def create
		@interface = Interface.new(params[:interface])
		
		respond_to do |format|
			if @interface.save
				format.html { redirect_to(@interface,
											:notice => 'Your interface was created succesfully.') }
				format.json { render :json => @interface,
											:status => :created, :location => @interface }
			else
				format.html { render :action => "new" }
				format.json { render :json => @interface.errors,
											:status => :unprocessable_entity }
			end
		end
	end
	
	def show
		@interface = Interface.find(params[:id])
	end

end
