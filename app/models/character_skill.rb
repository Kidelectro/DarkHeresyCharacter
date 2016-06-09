class CharacterSkill < ActiveRecord::Base
  belongs_to :skill
  belongs_to :character
end
