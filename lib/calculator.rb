# frozen_string_literal: true

class Calculator
  def initialize(lines)
    @lines = lines
  end

  def calculate_visits
    @lines.group_by(&:url).each_with_object({}) do |line, object|
      object[line[0]] = line[1].size
    end.sort_by(&:last).reverse
  end

  def calculate_uniq_visits
    @lines.group_by(&:url).each_with_object({}) do |line, object|
      object[line[0]] = line[1].map(&:ip).uniq.size
    end.sort_by(&:last).reverse
  end
end
