class SkillsController < ApplicationController
  before_action :set_skill, only: [:show]

  def index
    @skills = Skill.all
  end

  def show
  end

  def set_character
    @skill = Skill.find(params[:id])
  end
end
