# frozen_string_literal: true

class Printer
  def initialize(lines)
    @lines = lines
  end

  def visit_count
    puts 'Total visits:'
    @lines.map { |item| puts "#{item[0]} #{item[1]} visits" }
  end

  def uniq_visit_count
    puts 'Uniq visits:'
    @lines.map { |item| puts "#{item[0]} #{item[1]} uniq visits" }
  end
end
