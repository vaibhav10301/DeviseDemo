class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.string :address
      t.timestamps null: false
    end
  end
end
