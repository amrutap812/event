class DropMnagements < ActiveRecord::Migration[6.1]
  def change
  	drop_table :managements
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
