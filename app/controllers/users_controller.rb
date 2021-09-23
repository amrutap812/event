class UsersController < ApplicationController
	def my_eventshow
	    @shedule = Shedule.all
	    
	    
	end

	def booked_event
		@shedule_event = (current_user.shedules).uniq

	end

	def show
        @shedule = (current_user.shedules).uniq
		respond_to do |format|
      format.html
      format.pdf do
        render pdf: "filename", template: "users/show.html.erb"  # Excluding ".pdf" extension.
      end
    end

	end
end
