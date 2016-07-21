class AddNameColumnsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.rename :email, :login
    end
  end
end
