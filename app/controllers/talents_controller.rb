class TalentsController < ApplicationController
  before_action :set_talent, only: [:show, :edit, :update, :destroy]

  def index
    @talents = Talent.all
  end

  def new
    @talent = Talent.new
  end

  def create
    @talent = Talent.new(talent_params)
    if @talent.save
      redirect_to @talent, notice: "Talent was created!"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @talent.update(talent_params)
      redirect_to @talent, notice: "Talent updated!"
    else
      render :edit
    end
  end

  def destroy
    @talent.destroy
    redirect_to talents_path
  end

  private

  def talents_params
    params.require(:talent).permit(:name, :prerequisites, :aptitude_1, :aptitude_2,
      :benefit, :description)
  end

  def set_character
    @talent = Talent.find(params[:id])
  end
end
