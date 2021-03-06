# -*- coding: utf-8 -*- #
# frozen_string_literal: true

describe Rouge::Lexers::Sieve do
  let(:subject) { Rouge::Lexers::Sieve.new }

  describe 'guessing' do
    include Support::Guessing

    it 'guesses by filename' do
      assert_guess :filename => 'foo.sieve'
    end
  end

  describe 'lexing' do
    include Support::Lexing

    it 'recognizes one-line comments not followed by a newline' do
      assert_tokens_equal '# comment', ['Comment.Single', '# comment']
    end
  end
end
