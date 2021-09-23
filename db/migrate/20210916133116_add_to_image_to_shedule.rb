class AddToImageToShedule < ActiveRecord::Migration[6.1]
  def change
  	 add_column :shedules, :image, :string
  end
end
