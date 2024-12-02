class UsersController < ApplicationController

  def show
    @user = current_user
    @questions = current_user.questions
    @answers = current_user.answers
  end
end
