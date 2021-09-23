class CreateShedules < ActiveRecord::Migration[6.1]
  def change
    create_table :shedules do |t|
      t.string :event_name
      t.string :speaker_name
      t.string :venue_details
      t.string :purpose_of_conference
      t.decimal :price
      t.string :category
      t.datetime :date_time

      t.timestamps
    end
  end
end
