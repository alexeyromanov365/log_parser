class Printer
  def initialize(lines)
    @lines = lines
  end

  def visit_count
    p 'Total visits:'
    p @lines.map {|item| "#{item[0]} #{item[1]} visits\n"}
  end

  def uniq_visit_count
    p 'Uniq visits:'
    p @lines.map {|item| "#{item[0]} #{item[1]} uniq visits\n"}
  end
end
