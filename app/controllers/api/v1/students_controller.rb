class Api::V1::StudentsController < ApplicationController

  def index
    @students = Student.all
    render json: @students
  end


  def show
    find_student
    render json: @student
  end


  def create
    @student = Student.new(student_params)
    if @student.save
      render json: @student
    else
      render json: {error: "Oops! There was an error creating this student."}
    end
  end

  def update
    find_student
    @student.update(student_params)
    @student.save
    render json: @student
  end


  def destroy
    find_student
    @student.destroy
  end


  private

  def student_params
    params.require(:student).permit(:name, :bio, :allergies)
  end

  def find_student
    @student = Student.find(params[:id])
  end


end
