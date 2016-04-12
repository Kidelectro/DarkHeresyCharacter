class Character < ActiveRecord::Base
  has_many :skills
  has_many :talents
end
