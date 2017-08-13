class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]

  def show

  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(post_params)
    redirect_to student_path(@student)
  end

  def edit

  end

  def update
    @student.update(post_params)
    redirect_to student_path(@student)
  end

  private

  def post_params
    params.require(:student)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end