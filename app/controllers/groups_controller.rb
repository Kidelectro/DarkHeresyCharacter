class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.all
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def group_params
    params.require(:group).permit(:name, :description, :skill_id )
  end

  def set_group
    @group = Group.find(params[:id])
  end
end
