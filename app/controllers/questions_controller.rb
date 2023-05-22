class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @messeges = params[:question]
    if @messeges == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @messeges.include?('?')
      @coach_answer = 'Silly question, get dressed and go to work!.'
    else
      @coach_answer = 'I do not care, get dressed and go to work!'
    end
  end
end
