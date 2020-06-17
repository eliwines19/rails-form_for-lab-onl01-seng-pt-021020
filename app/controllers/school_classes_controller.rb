class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_classes = SchoolClass.find(params[:id])
  end

  def new
  end

  def create
    @school_classes = SchoolClass.new
    @school_classes.title = params[:title]
    @school_classes.room_number = params[:room_number]
    @school_classes.save
    redirect_to school_class_path(@school_classes)
  end
end
