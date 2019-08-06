require 'spec_helper'
require 'line'

RSpec.describe Line do
  let(:valid_line) { '/help_page/1 126.318.035.038' }
  let(:invalid_line) { '/help_page/1126.318.035.038' }

  describe '#new' do
    context 'with valid_line' do
      it 'sets the url field' do
        expect(described_class.new(valid_line).url).to eq(valid_line.split.first)
      end

      it 'sets the ip field' do
        expect(described_class.new(valid_line).ip).to eq(valid_line.split.last)
      end
    end

    context 'with invalid line' do
      it 'sets the url field' do
        expect(described_class.new(invalid_line).url).to eq(invalid_line.split.first)
      end

      it 'don\'t sets the ip field' do
        expect(described_class.new(invalid_line).ip).to be_nil
      end
    end
  end
end
