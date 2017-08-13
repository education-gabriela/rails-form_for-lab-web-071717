class SchoolClassesController < ApplicationController
  before_action :set_school_class, only: [:show, :edit, :update]

  def index

  end

  def show

  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(post_params)
    redirect_to school_class_path(@school_class)
  end

  def edit

  end

  def update
    @school_class.update(post_params)
    redirect_to school_class_path(@school_class)
  end

  private

  def post_params
    params.require(:school_class)
  end

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

end