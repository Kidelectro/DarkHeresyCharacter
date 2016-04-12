class TalentsController < ApplicationController
  before_action :set_talent, only: [:show]

  def index
    @talents = Talent.all
  end

  def show
  end

  def set_character
    @talent = Talent.find(params[:id])
  end
end
