# frozen_string_literal: true

filename = ARGV.first

require_relative 'lib/summary'

filename = ARGV.first

summary = Summary.new(filename)
summary.visits
summary.uniq_visits
