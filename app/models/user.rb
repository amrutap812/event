class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_shedules
  has_many :shedules, through: :user_shedules
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


 def full_name
    return " #{first_name} #{last_name} " if first_name || last_name
    "Anonymous"
  end
  
  def not_shedules_with?(id_of_event)
    !self.shedules.where(id: id_of_event).exists?
  end   


end
