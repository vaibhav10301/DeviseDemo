class AddRoleToUser < ActiveRecord::Migration
  def change
    add_column :users, :Role, :boolean
  end
end
