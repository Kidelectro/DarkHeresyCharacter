class ChangeActiveToTrue < ActiveRecord::Migration
  def change
    change_column :users, :active, :boolean, :default => true 
    change_column :users, :approved, :boolean, :default => true 
    change_column :users, :confirmed, :boolean, :default => true 
  end
end
