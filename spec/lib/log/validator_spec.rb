# frozen_string_literal: true

require 'spec_helper'
require 'log/validator'
require 'log/line'

RSpec.describe Log::Validator do
  let(:invalid_line) { Log::Line.new('/help_page/1126.318.035.038') }

  describe '#validate' do
    it 'returns error message' do
      expect { described_class.new(invalid_line).validate }.to raise_error(RuntimeError)
    end
  end
end
