class UsersController < ApplicationController
	def my_eventshow
	    @shedule = Shedule.all
	    
	    
	end

	def booked_event
		@shedule_event = (current_user.shedules).uniq

	end
end
