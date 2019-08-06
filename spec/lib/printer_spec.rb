# frozen_string_literal: true

require 'spec_helper'
require 'printer'

RSpec.describe Printer do
  let(:lines) { [['/about/2', 45], ['/contact', 32]] }

  subject { described_class.new(lines) }

  let(:visit_output) { "Total visits:\n/about/2 45 visits\n/contact 32 visits\n" }
  let(:uniq_output) { "Uniq visits:\n/about/2 45 uniq visits\n/contact 32 uniq visits\n" }

  describe '#visit_count' do
    it 'returns url visits count' do
      expect { subject.visit_count }.to output(visit_output).to_stdout
    end
  end

  describe '#uniq_visit_count' do
    it 'returns url with uniq visits count' do
      expect { subject.uniq_visit_count }.to output(uniq_output).to_stdout
    end
  end
end
