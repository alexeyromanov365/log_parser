require 'spec_helper'
require 'log/reader'

RSpec.describe Log::Reader do
  subject { described_class.new('spec/fixtures/test_file.log') }

  describe '#read' do
    it 'returns data with url and ip' do
      expect(subject.read.first).to eq("/help_page/1 126.318.035.038\n")
    end

    it 'returns array with urls and ips' do
      expect(subject.read).to be_a(Array)
    end
  end
end

