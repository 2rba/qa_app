# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Question, type: :model do
  subject(:question) { Question.new(user: User.new, body: 'what?') }

  it { is_expected.to be_valid }

  context 'with empty body' do
    subject(:question) { Question.new(user: User.new, body: '') }

    it { is_expected.to be_invalid }
  end
end
