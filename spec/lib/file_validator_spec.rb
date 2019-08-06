require 'spec_helper'
require 'file_validator'
require 'line'

RSpec.describe FileValidator do
  let(:invalid_line) { Line.new('/help_page/1126.318.035.038') }

  describe '#validate' do
    it 'returns error message' do
      expect { described_class.new(invalid_line).validate }.to raise_error(RuntimeError)
    end
  end
end
