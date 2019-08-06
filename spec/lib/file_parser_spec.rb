require 'spec_helper'

RSpec.describe FileParser do
  let(:data) { ["/help_page/1 126.318.035.038\n", "/contact 184.123.665.067\n"] }

  subject { described_class.new(data) }

  describe '#parse' do
    it 'returns parsed url' do
      line = subject.parse.first
      expect(line.url).to eq('/help_page/1')
    end

    it 'returns parsed ip' do
      line = subject.parse.first
      expect(line.ip).to eq('126.318.035.038')
    end
  end
end

