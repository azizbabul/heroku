class CreateJvScripts < ActiveRecord::Migration
  def change
    create_table :jv_scripts do |t|
      t.integer :depo
      t.integer :withd
      t.integer :bal

      t.timestamps null: false
    end
  end
end
