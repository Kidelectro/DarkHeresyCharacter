class AddMoreColumnsToTalents < ActiveRecord::Migration
  def change
    change_table :talents do |t|
      t.string :prerequisites
      t.string :aptitude_1
      t.string :aptitude_2
      t.text :benefit
      t.text :description
    end
  end
end
