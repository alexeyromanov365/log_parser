require_relative 'log/reader'
require_relative 'log/parser'
require_relative 'calculator'
require_relative 'printer'

class Summary
  def initialize(path)
    @path = path
  end

  def visits
    calculated_lines = Calculator.new(parsed_lines).calculate_visits
    Printer.new(calculated_lines).visit_count
  end

  def uniq_visits
    calculated_lines = Calculator.new(parsed_lines).calculate_uniq_visits
    Printer.new(calculated_lines).uniq_visit_count
  end

  private

  def parsed_lines
    data = Log::Reader.new(@path).read
    Log::Parser.new(data).parse
  end
end
