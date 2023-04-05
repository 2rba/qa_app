# frozen_string_literal: true
class Question < ApplicationRecord
  belongs_to :user
  has_many :ordered_answers, -> { order(created_at: :desc) },
           class_name: 'Answer', inverse_of: :question, dependent: :destroy

  validates :body, presence: true
end
