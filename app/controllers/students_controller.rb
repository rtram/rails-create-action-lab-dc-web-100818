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
    student = Student.new(last_name: params[:last_name], first_name: params[:first_name])
    student.save
    redirect_to student_path(student)
  end

end
