require_relative 'validator'

module Log
  class Parser
    def initialize(data)
      @data = data
    end

    def parse
      @data.map do |line|
        line_object = Line.new(line)
        Validator.new(line_object).validate
        line_object
      end
    end
  end
end
