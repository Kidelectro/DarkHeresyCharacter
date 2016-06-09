class CreateCharacterSkills < ActiveRecord::Migration
  def change
    create_table :character_skills do |t|
      t.integer :override_skill_type
      t.integer :skill_step

      t.timestamps null: false
    end
  end
end
