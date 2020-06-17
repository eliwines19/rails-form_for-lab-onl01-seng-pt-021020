class SchoolClassesController < ApplicationController
  def index
    @school_class = SchoolClasses.all
  end

  def show
    @school_class = SchoolClasses.find(params[:id])
  end

  def new
  end

  def create
    @school_class = SchoolClass.new
    @school_class.title = params[:title]
    @school_class.room_number = params[:room_number]
    @school_class.save
    redirect_to school_class_path(@school_class)
  end
end
