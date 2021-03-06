class Master::CountriesController < ApplicationController
	
	def index
		@countries=Country.all
	end
	
	def new
		@country=Country.new
	end

	def create
		@country=Country.new(params[:country])
		@country.save!
		flash[:notice]="New country Created Successfully.."
		redirect_to(master_countries_path)
	end

	def edit
		@country=Country.find(params[:id])
	end
	
	def update
		@country=Country.find(params[:id])
		@country=Country.update_attributes(params[:country])
	end

	def destroy
		@country=Country.find(params[:id])
		status = @country.destroy	
		if status
			flash[:notice]="Country Successfully Deleted..."
			redirect_to(master_countries_path)
		else
			flash[:notice]="Country Not Deleted..."
			redirect_to(master_countries_path)
		end		
	end
end
