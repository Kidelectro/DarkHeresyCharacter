class AddCharacteristicToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :characteristic, :string
    add_column :skills, :description, :text
    add_column :skills, :descriptor, :string
    add_column :skills, :game_rules, :text
    add_column :skills, :is_advanced?, :boolean
    add_column :skills, :group_id, :integer
  end
end
