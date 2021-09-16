class Shedule < ApplicationRecord
	has_many :user_shedules
	has_many :users, through: :user_shedules
	has_one_attached :avatar

 def self.check_db(id)
		where(id: id).first
	end
	
end
