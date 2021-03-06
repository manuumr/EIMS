class Master::StatesController < ApplicationController

	def index
		@states=State.all
	end
	
	def new
		@state=State.new
	end

	def create
		@state=State.new(params[:state])
		@state.save!
		flash[:notice]="New State Created Successfully.."
		redirect_to(master_states_path)
	end

	def edit
		@state=State.find(params[:id])
	end
	
	def update
		@state=State.find(params[:id])
		@state=State.update_attributes(params[:state])
	end

	def destroy
		@state=State.find(params[:id])
		status = @state.destroy	
		if status
			flash[:notice]="State Successfully Deleted..."
			redirect_to(master_states_path)
		else
			flash[:notice]="State Not Deleted..."
			redirect_to(master_states_path)
		end		
	end
end
