class DepartmentsController < ApplicationController

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = current_user
    @department = Department.find(params[:id])
    @questions = @department.questions
  end
end

private
def department_params
  params.require(:department).permit(:department)
end



