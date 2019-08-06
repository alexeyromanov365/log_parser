require 'spec_helper'
require 'calculator'
require 'log/line'

RSpec.describe Calculator do
  let(:log_lines) do
    [
      Log::Line.new('/help_page/1 126.318.035.038'),
      Log::Line.new('/help_page/1 126.318.035.035'),
      Log::Line.new('/contact 184.123.665.067')
    ]
  end

  subject { described_class.new(log_lines) }

  describe '#calculate_visits' do
    it 'returns url with calculated visits' do
      expect(subject.calculate_visits).to eq([['/help_page/1', 2], ['/contact', 1]])
    end
  end

  describe '#calculate_uniq_visits' do
    it 'returns url with calculated uniq visits' do
      expect(subject.calculate_uniq_visits).to eq([['/help_page/1', 2], ['/contact', 1]])
    end
  end
end
