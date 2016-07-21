class EditIndexOnUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :email
    end
    add_index :users, :email, unique: true
  end
end
