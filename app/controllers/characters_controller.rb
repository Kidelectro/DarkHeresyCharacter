class CharactersController < ApplicationController
  before_action :set_character, only: [:show]

  def index
    @characters = Character.all
  end

  def show
    @skills = Skill.where(character_id: @character)
  end

  def set_character
    @character = Character.find(params[:id])
  end
end
