# frozen_string_literal: true

require 'spec_helper'
require 'summary'
require 'pry'

RSpec.describe Summary do
  subject { described_class.new('spec/fixtures/test_file.log') }

  let(:visits_output) { "Total visits:\n/help_page/1 3 visits\n/contact 1 visits\n" }
  let(:uniq_output) { "Uniq visits:\n/help_page/1 2 uniq visits\n/contact 1 uniq visits\n" }

  describe '#visits' do
    it 'returns url visits' do
      expect { subject.visits }.to output(visits_output).to_stdout
    end
  end

  describe '#uniq_visits' do
    it 'returns uniq url visits' do
      expect { subject.uniq_visits }.to output(uniq_output).to_stdout
    end
  end
end
