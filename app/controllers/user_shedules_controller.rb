class UserShedulesController < ApplicationController
	def create
		@shedule = Shedule.check_db(params[:id])


		@user_shedule = UserShedule.new(user: current_user, shedule: @shedule)
		#binding.pry
		if @user_shedule.save

			flash[:notice] = "Event  is successfully add to your list"
		#else
			#flash[:alert] = @user_salon.errors.messages
		end
		redirect_to booked_event_path
     end
		
		def destroy
				event = Shedule.find(params[:id])

				@user_shedule = UserShedule.where(user_id: current_user.id, shedule_id: event.id).first
				
				@user_shedule.destroy
				flash[:notice] = "#{event.event_name} was successfully cancelled."
				redirect_to booked_event_path
             

	     end
end
