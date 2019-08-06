# frozen_string_literal: true

require_relative 'lib/summary'

filename = ARGV.first

summary = Summary.new(filename)
summary.visits
summary.uniq_visits
