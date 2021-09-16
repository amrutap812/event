class ShedulesController < ApplicationController
	before_action :set_shedule, only: [:edit, :update, :destroy]

	def new
		@shedule = Shedule.new 
	end

	def create
		@shedule = Shedule.new(shedule_params)
         
		if @shedule.save
			flash[:notice] = "Event was created successfully"
			redirect_to new_shedule_path
		else
			render 'new'

		end
	end

	def edit

	end

	def update
	
		if @shedule.update(shedule_params)
			flash[:notice] = "Event was updated successfully"
			redirect_to my_eventshow_path
		else
			render 'edit'
		end
	end


	def destroy
		
		@shedule.destroy
		flash[:notice] = "this data deleted successfully"

		redirect_to my_eventshow_path
	end

private

	def set_shedule
		@shedule = Shedule.find(params[:id ])
	end

	def shedule_params
		params.require(:shedule).permit(:event_name, :speaker_name, :venue_details, :purpose_of_conference, :price, :category, :date_time)
		 
	end

end