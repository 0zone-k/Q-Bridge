class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path

    else
      render :new ,status: :unprocessable_entity
    end
  end

  private
  def question_params
    params.require(:question).permit(:title, :category_id, :content, :affilation_id, :deadline).merge(user_id: current_user.id)
  end
end
