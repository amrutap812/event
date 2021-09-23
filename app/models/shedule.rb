class Shedule < ApplicationRecord
	validates :speaker_name,:event_name ,uniqueness: true, presence: true,format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" },length: { minimum: 5,message: "name should be minimum 5 character" }
	validates :price, presence: true, numericality: { only_integer: true , message: "Not in numeric format "}
    validates :venue_details,:purpose_of_conference,:category,:date_time, presence: true 
    has_many :user_shedules , dependent: :destroy
	has_many :users, through: :user_shedules
	has_one_attached :avatar

 def self.check_db(id)
		where(id: id).first
	end
	
end

