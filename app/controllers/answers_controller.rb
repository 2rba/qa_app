# frozen_string_literal: true
class AnswersController < ApplicationController
  def create
    @answer = Answer.new(
      user: current_user,
      question_id: answer_params.require(:question_id),
      body: answer_params.fetch(:body)
    )

    if @answer.save
      redirect_to @answer.question, notice: 'Answer was successfully created.'
    else
      redirect_to @answer.question, alert: @answer.errors.full_messages.to_sentence
    end
  end

  private

  def answer_params
    @answer_params ||= params.require(:answer).permit(:body, :question_id)
  end
end
