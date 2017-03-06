class SubjectsController < ApplicationController
  before_action :authenticate_user!
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to @subject
    end
  end

  def edit
    @subject = Subject.find(params[:id])
    render 'form'
  end

  def update
  end

  def destroy
    @subject = Subject.find(params[:id])
    if @subject.destroy
      redirect_to subjects_path
    end
  end

  private
  def subject_params
    params.require(:subject).permit(:title)
  end

end
