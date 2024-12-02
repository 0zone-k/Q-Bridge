class QuestionsController < ApplicationController
  before_action :set_question, only: [:edit, :update, :show, :destroy]
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

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    if @question.update(question_params)
      redirect_to question_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if current_user.id == @question.user_id
        @question.destroy
        redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  def question_params
    params.require(:question).permit(:title, :category_id, :content, :affilation_id, :deadline, :image).merge(user_id: current_user.id)
  end

  def set_question
    @question = Question.find(params[:id])
  end
  def answer_params
    params.require(:answer).permit(:answer).merge(user_id: current_user.id)
  end
end

