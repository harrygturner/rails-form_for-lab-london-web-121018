class StudentsController < ApplicationController

    def index
      @students = Student.all
    end

    def show
      @student = Student.find(params[:id])
    end

    def new
    end

    def create
      student = Student.create({first_name: params[:student][:first_name], last_name: params[:student][:last_name]})

      redirect_to student_path(student)
    end

    def edit
      @student = Student.find(params[:id])
    end

    def update
      student = Student.find(params[:id])
      student.update(params.require(:student))

      redirect_to student_path
    end

end
