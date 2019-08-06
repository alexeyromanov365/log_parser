require 'spec_helper'
require 'summary'

RSpec.describe Summary do
  subject { described_class.new('spec/fixtures/test_file.log') }

  describe '#visits' do
    it 'returns url visits' do
      expect(subject.visits).to eq('/help_page/1 3 visits, /contact 1 visits')
    end
  end

  describe '#uniq_visits' do
    it 'returns uniq url visits' do
      expect(subject.uniq_visits).to eq('/help_page/1 2 uniq visits\n, /contact 1 uniq visits')
    end
  end
end
