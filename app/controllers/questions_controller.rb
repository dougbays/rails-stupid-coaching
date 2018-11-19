class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:query]
    if @question == "I am going to work"
      @coach_response = "Great!"
    elsif @question.to_s[-1] == '?'
      @coach_response = 'Silly question, get dressed and go to work!'
    else
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end
