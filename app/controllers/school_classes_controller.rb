class SchoolClassesController < ApplicationController

  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
  end

  def create
    school_class = SchoolClass.create({title: params[:school_class][:title], room_number: params[:school_class][:room_number]})

    puts params.inspect

    redirect_to school_class_path(school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    school_class = SchoolClass.find(params[:id])
    school_class.update(params.require(:school_class))

    redirect_to school_classes_path
  end

end
