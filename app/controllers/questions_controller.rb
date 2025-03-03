class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coachsays = "I don't care, get dressed and go back to work!"
    @coachsays = 'Great!' if params[:question] == 'I am going to work'
    @coachsays = 'Silly question, get dressed and go to work!' if params[:question].last == '?'
  end
end
