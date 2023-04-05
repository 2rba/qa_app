# frozen_string_literal: true
class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :desc).strict_loading.includes(:user)
  end

  def show
    @question = Question.strict_loading.includes(:user, ordered_answers: :user).find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(user: current_user, body: params.require(:question).fetch(:body))

    if @question.save
      redirect_to @question, notice: 'Question was successfully created.'
    else
      redirect_to new_question_url, alert: @question.errors.full_messages.to_sentence
    end
  end
end
