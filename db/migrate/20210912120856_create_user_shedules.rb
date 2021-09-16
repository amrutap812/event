class CreateUserShedules < ActiveRecord::Migration[6.1]
  def change
    create_table :user_shedules do |t|
      t.references :user, null: false, foreign_key: true
      t.references :shedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
