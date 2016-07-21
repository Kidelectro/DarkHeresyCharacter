class AddRollToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :roll
    end
  end
end
