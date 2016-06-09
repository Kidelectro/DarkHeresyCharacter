class AddSkillIdToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :skill_id, :integer
  end
end
