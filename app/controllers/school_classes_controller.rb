class SchoolClassesController < ApplicationController
  def index
    @class = SchoolClasses.all
  end

  def show
    @class = SchoolClasses.find(params[:id])
  end

  def new
  end

  def create
    @class = SchoolClasses.new
    @class.title = params[:title]
    @class.room_number = params[:room_number]
    @class.save
    redirect_to school_class_path(@class)
  end
end
