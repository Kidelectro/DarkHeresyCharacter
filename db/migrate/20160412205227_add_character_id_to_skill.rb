class AddCharacterIdToSkill < ActiveRecord::Migration
  def change
    add_column :skills, :character_id, :integer
  end
end
