class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      redirect_to @subject_path, notice: "The subject has been created!" and return
    end
    render 'new'
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])

    if @subject.update_attributes(subject_params)
      redirect_to subject_path, notice: "#{title} has been updated!" and return
    end

    render 'edit'
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy

    redirect_to subject_path, notice: "#{title} has been deleted!" and return
  end
private
  def subject_params
    params.require(:subject).permit(:title)
  end
end