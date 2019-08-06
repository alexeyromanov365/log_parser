require 'spec_helper'
require 'printer'

RSpec.describe Printer do
  let(:lines) { [['/about/2', 45], ['/contact', 32]] }

  subject { described_class.new(lines) }

  describe '#visit_count' do
    it 'returns url visits count' do
      expect(subject.visit_count).to eq('/about/2 45 visits, /contact 32 visits')
    end
  end

  describe '#uniq_visit_count' do
    it 'returns url with uniq visits count' do
      expect(subject.uniq_visit_count).to eq('/about/2 45 uniq visits, /contact 32 uniq visits')
    end
  end
end
