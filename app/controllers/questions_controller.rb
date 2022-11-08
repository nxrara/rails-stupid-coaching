class QuestionsController < ApplicationController
  def answer
    if params[:ask] # truthy value
      @ask = params[:ask]
      @answer = coach_answer_enhanced(params[:ask])
    end
    # else
    #   redirect_to ask_path
    # end
    # to protect if nil params[:ask]
  end

  def ask
  end

  def coach_answer(your_message)
    if your_message == "I am going to work"
      "Great!"
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)
    if answer != ""
      if your_message.upcase == your_message
        "I can feel your motivation! #{answer}"
      else
        answer
      end
    else
      "Great!"
    end
  end
end
