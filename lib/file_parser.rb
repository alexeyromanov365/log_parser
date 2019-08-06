class FileParser
  def initialize(data)
    @data = data
  end

  def parse
    @data.map do |line|
      Log::Line.new(line)
    end
  end
end
