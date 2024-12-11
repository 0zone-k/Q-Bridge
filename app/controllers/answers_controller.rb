class AnswersController < ApplicationController
  def new
    @question = Question.find_by(id: params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find_by(id: params[:question_id])
    @answer = @question.answers.build(answer_params)
    @answer.user = current_user
    if @answer.save
      redirect_to question_path(@question)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def question_params
    params.require(:question).permit(:title, :category_id, :content, :department_id, :deadline, :image).merge(user_id: current_user.id)
  end
  def answer_params
    params.require(:answer).permit(:answer).merge(user_id: current_user.id)
  end
end
