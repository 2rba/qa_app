# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Answer, type: :model do
  subject(:answer) { Answer.new(user: User.new, question: question, body: 'all good') }

  let(:question) { Question.new(user: User.new, body: 'what?') }

  it { is_expected.to be_valid }

  context 'with empty body' do
    subject(:answer) { Answer.new(user: User.new, question: question, body: '') }

    it { is_expected.to be_invalid }
  end
end
