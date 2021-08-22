class QuizzesController < ApplicationController
  def home
  end

  def question
    @question = Quiz.order("RANDOM()").first
  end

  def answer
    @answer = Quiz.find(params[:id])
  end
  
  def new
  end

  def create
    @post = Quiz.new(quiz_params)
    if @post.save
      redirect_to root_path
    else
      render quizzes_new_path
    end
  end
  
  private
    def quiz_params
      params.require(:post).permit(:question, :answer, :description)
    end
end
