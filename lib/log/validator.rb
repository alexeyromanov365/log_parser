module Log
  class Validator
    def initialize(line)
      @line = line
    end

    def validate
      raise 'Invalid line format' unless @line.url && @line.ip
    end
  end
end
