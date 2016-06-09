class Skill < ActiveRecord::Base
  has_many :groups
  has_many :character_skills
  has_many :characters, through: :character_skills
end
